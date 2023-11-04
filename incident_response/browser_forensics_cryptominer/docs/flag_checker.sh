#!/bin/bash

ENCRYPTED_FLAG_1="YjIzZWZiNDY1MDE1MGQ1YmM1YjJkZTZmMDUyNjcyNzJjYWRhMDZkOTg1YTA="
ENCRYPTED_FLAG_2="dHdpdHRlci5jb20vQ3J5cHRvTG9vdE1pbmVy"

read -p "Enter the public key: " user_input_1
read -p "Enter twitter account: " user_input_2

encrypted_input_1=$(echo -n "$user_input_1" | base64)
encrypted_input_2=$(echo -n "$user_input_2" | base64)

if [[ "$encrypted_input_1" == "$ENCRYPTED_FLAG_1" ]]; then
    echo "[+] Congratulations! You found the correct public key!"
else
    echo "[-] The public key is incorrect."
fi

if [[ "$encrypted_input_2" == "$ENCRYPTED_FLAG_2" ]]; then
    echo "[+] Congratulations! You found the correct twitter account!"
else
    echo "[-] The twitter account is incorrect."
fi