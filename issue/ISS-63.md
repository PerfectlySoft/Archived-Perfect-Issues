# [ISS-63] no such module "perfectlib"

[XML Source](../xml/ISS-63.xml)
<p><p>main_http.swift while using XCode 7.2</p>

<p>Just needs the build settings modified slightly</p>

<p>PerfectLib -&gt; Build Settings -&gt; Packaging -&gt; Defines Module</p>

<p>It currently defaults to No causing the error.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Cian](25564)|[Unassigned]($-1)





Created|Wed, 23 Dec 2015 20:11:45 -0500
-------|--------------
Updated|Fri, 5 Feb 2016 16:23:20 -0500
Resolved|


## Comments




### Thu, 24 Dec 2015 09:44:52 -0500 / kjessup 

<p><p>I don't see the problem myself. It builds and runs fine with Xcode 7.2. I will make this change though.</p></p>


