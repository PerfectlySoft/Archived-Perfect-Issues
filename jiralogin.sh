#!/bin/sh
clear
curl -vX POST -d "os_username=$1&os_password=$2" \
-c jiracookie.txt \
"http://jira.perfect.org:8080/login.jsp"
#for i in $(seq 1 586); do ./iss-dl.sh $i; done