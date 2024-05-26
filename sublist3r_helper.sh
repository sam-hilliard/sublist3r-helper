#!/bin/bash

# Check if Sublist3r is installed
if ! command -v sublist3r &> /dev/null; then
    echo "Error: Sublist3r is not installed or not in the PATH."
    exit 1
fi

# Check if a domain list file is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <domain_list_file>"
    exit 1
fi

# Read the domain list file line by line and call Sublist3r for each domain
while IFS= read -r domain; do
    echo "Enumerating subdomains for: $domain"
    sublist3r -d "$domain" -o "$domain.sublist3r.out"
    echo "========================================="
done < "$1"
