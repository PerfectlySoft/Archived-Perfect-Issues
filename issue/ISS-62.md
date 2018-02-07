# [ISS-62] Authenticator example does not validate password.

[XML Source](../xml/ISS-62.xml)
<p><p>Any password seems to work as long as the username field is valid.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[dylanreich](dylanreich)|[Unassigned]($-1)





Created|Wed, 23 Dec 2015 14:45:04 -0500
-------|--------------
Updated|Thu, 24 Dec 2015 09:55:51 -0500
Resolved|


## Comments




### Thu, 24 Dec 2015 09:55:51 -0500 / kjessup 

<p><p>Well, that is suboptimal. A line of code had fallen outside of the appropriate if block. This is corrected now and bad passwords no longer appear to be correct.</p>

<p>Thank you!</p></p>


