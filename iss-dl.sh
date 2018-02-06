#!/bin/sh
curl -H "X-ASESSIONID: $3" \
"X-AUSERNAME: $2" \
-b jiracookie.txt \
"http://jira.perfect.org:8080/si/jira.issueviews:issue-xml/ISS-$1/ISS-$1.xml" \
> ISS-$1.xml