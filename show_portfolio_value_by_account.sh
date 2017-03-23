#!/bin/sh

echo " "
echo "Show Portfolio Value By Account"
echo " "

read -p "Enter login : "  login

read -p "Enter password : "  password

read -p "Enter account owner first name : " fname

read -p "Enter account owner last name : " lname

#mysql -uadmin -padmin_pass  -t -e "use client_profile_db; call show_portfolio_value_by_account ('$1','$2');"
mysql -u$login -p$password  -t -e "use client_profile_db; call show_portfolio_value_by_account ('$fname','$lname');"
