#!/usr/bin/awk -f

BEGIN {
    # Set the basic salary
    basic = 0

    # Set the HRA and DA percentages
    hra_percentage = 0
    da_percentage = 0

    # Read the basic salary from input
    printf("Enter the basic salary: ")
    getline basic < "-"
}

# Calculate HRA and DA based on the basic salary
{
    if (basic < 10000) {
        hra_percentage = 15
        da_percentage = 45
    } else {
        hra_percentage = 20
        da_percentage = 50
    }

    # Compute the gross salary
    hra = (hra_percentage / 100) * basic
    da = (da_percentage / 100) * basic
    gross = basic + hra + da

    # Print the computed gross salary
    printf("Gross Salary: %.2f\n", gross)
}
