#!/bin/sh

echo " "
echo "Show Historical Prices"
echo " "

read -p "Enter login : "  login

read -p "Enter password : "  password

read -p "Enter a stock symbol : " symbol

read -p "Enter a start date in a date range : " sdate

read -p "Enter an end date in a date range : " edate

if [ -z "$sdate" ] && [ -z "$edate" ] ; then
   mysql -u$login -p$password  -t -e "use client_profile_db; call show_historical_prices ('$symbol',null,null);"
elif [ -z "$sdate" ] ; then
   mysql -u$login -p$password  -t -e "use client_profile_db; call show_historical_prices ('$symbol',null,'$edate');"
elif [ -z "$edate" ] ; then
   mysql -u$login -p$password  -t -e "use client_profile_db; call show_historical_prices ('$symbol','$sdate',null);"
else
   mysql -u$login -p$password  -t -e "use client_profile_db; call show_historical_prices ('$symbol','$sdate','$edate');"
fi
#mysql -uadmin -padmin_pass  -t -e "use client_profile_db; call show_historical_prices ('$1','$2','$3');"
