#!/bin/sh

echo " "
echo "Show Position History By Symbol"
echo " "

read -p "Enter login : "  login

read -p "Enter password : "  password

read -p "Enter a stock symbol : " symbol

#mysql -uadmin -padmin_pass  -t -e "use client_profile_db; call show_position_history_by_symbol ('$1');"
mysql -uadmin -padmin_pass  -t -e "use client_profile_db; call show_position_history_by_symbol ('$symbol');"
