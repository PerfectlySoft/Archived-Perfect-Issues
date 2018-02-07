# [ISS-81] Little improvements

[XML Source](./xml/ISS-81.xml)
<p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Felix](SimpleFelix)|[Unassigned]($-1)





Created|Thu, 14 Jan 2016 01:15:21 -0500
-------|--------------
Updated|Mon, 18 Jan 2016 09:29:06 -0500
Resolved|


## Comments




### Thu, 14 Jan 2016 09:23:16 -0500 / kjessup 

<p><p>Unfortunately, I find pathInfo to not be reliable when using Apache, particularly with mod_rewrite (which is a pretty common scenario). I was using pathInfo for that code originally, but Apache was chopping off the first path component. I will double check this.</p></p>


### Thu, 14 Jan 2016 11:50:22 -0500 / simplefelix 

<p><p>Hi. If pathInfo() isn't good when you have double checked ,i will revert the commit.</p></p>


