# [ISS-71] How to run MySQLTests.swift?

[XML Source](../xml/ISS-71.xml)
<p><p>How can I run MySQLTests.swift on ubuntu?</p>

<p>I've copied both <tt>MySQL.so</tt> and <tt>MySQL.swift</tt> to <tt>Perfect/Connectors/MySQL/MySQLTests</tt>.</p>

<p>When I execute <tt>swift MySQLTests.swift</tt>, I always get <tt>error: no such module 'MySQL'</tt></p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[lyenliang](lyenliang)|[Unassigned]($-1)





Created|Thu, 7 Jan 2016 04:25:23 -0500
-------|--------------
Updated|Thu, 9 Jun 2016 15:20:12 -0400
Resolved|


## Comments




### Thu, 9 Jun 2016 15:20:11 -0400 / kjessup 

<p><p>Currently building on all platforms with SPM and set to execute tests with 'swift test'.</p></p>


