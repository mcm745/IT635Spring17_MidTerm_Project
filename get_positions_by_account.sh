#!/bin/sh

echo " "
echo "Get Positions By Account"
echo " "

read -p "Enter login : "  login

read -p "Enter password : "  password

read -p "Enter account owner first name : " fname 

read -p "Enter account owner last name : " lname 

#mysql -uadmin -padmin_pass  -t -e "use client_profile_db; call get_positions_by_account ('$1','$2');"
mysql -u$login -p$password  -t -e "use client_profile_db; call get_positions_by_account ('$fname','$lname');"
