# [ISS-59] MySQL Connector Build Failed

[XML Source](../xml/ISS-59.xml)
<p><p>Have an error on line 53 of MySQL.swift:<br/>
         static private var dispatchOnce: Threading.ThreadOnce = 0<br/>
         &#8211; Cannot convert value of type'Int' to specified type 'ThreadOnce' (aka '_opaque_pthread_once_t')</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Cameron Deardorff](camdeardorff)|[Unassigned]($-1)





Created|Sun, 20 Dec 2015 19:12:46 -0500
-------|--------------
Updated|Mon, 21 Dec 2015 09:32:52 -0500
Resolved|


## Comments




### Mon, 21 Dec 2015 09:32:52 -0500 / kjessup 

<p><p>Fixed. Thank you.</p></p>


