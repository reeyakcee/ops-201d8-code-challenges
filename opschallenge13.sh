#Script Name:                   opschallenge13
# Author:                       Reeya Karki
# Date of latest revision:      05/11/2023
# Purpose:                      Domain Analyzer
 
#Declaration of functions

#Run who is against a user input string.
echo "Please enter a domain name"
read domain 

whois $domain >> test.txt

#Run dig against the user input string.
dig $domain >> test.txt

#Run host against the user input string.
host $domain >> test.txt

#Run nslookup against the user input string.
nslookup_domain() {
    nslookup $1
}

nslookup_domain $domain >> test.txt

#End










