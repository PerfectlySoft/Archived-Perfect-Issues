# [ISS-88] Handle request concurrently

[XML Source](../xml/ISS-88.xml)
<p><p>Hi all   <br/>
Does the framework handle incoming request concurrently?  <br/>
Thanks</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[zero_coder](kostonstyle)|[Unassigned]($-1)





Created|Sun, 17 Jan 2016 10:15:55 -0500
-------|--------------
Updated|Mon, 18 Jan 2016 15:33:22 -0500
Resolved|


## Comments




### Mon, 18 Jan 2016 09:43:31 -0500 / kjessup 

<p><p>Yes, it does. All the networking and request handling is inherently asynchronous.</p></p>


### Mon, 18 Jan 2016 15:33:22 -0500 / kostonstyle 

<p><p>So every request is going to create there own thread like golang http lib? Asynchronous like node.js?</p></p>


