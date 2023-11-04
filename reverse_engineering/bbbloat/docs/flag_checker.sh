#!/bin/bash

ENCRYPTED_FLAG="cGljb0NURntjdTdfN2gzX2JsMDQ3XzM2ZGQzMTZhfQ=="

read -p "Enter the flag: " user_input

encrypted_input=$(echo -n "$user_input" | base64)

if [[ "$encrypted_input" == "$ENCRYPTED_FLAG" ]]; then
    echo "[+] Congratulations! You found the correct flag."
else
    echo "[-] Sorry, the flag you entered is incorrect."
fi 