# [ISS-44] Perfect Server runs fine in Xcode, but not when I click the .app file.

[XML Source](./xml/ISS-44.xml)
<p><p>Perfect Server runs fine in Xcode when I click the "run" button, but not when I click the .app file in Finder. How to figure this out?</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Stark Shaw](starkshaw)|[Unassigned]($-1)





Created|Mon, 7 Dec 2015 10:26:45 -0500
-------|--------------
Updated|Thu, 10 Dec 2015 10:34:56 -0500
Resolved|


## Comments




### Thu, 10 Dec 2015 10:34:56 -0500 / kjessup 

<p><p>Find where Xcode spits out the PerfectLib.framework for OS X (ctrl-click in the Products group and choose "Show in Finder"). Make a symlink to that in /Library/Frameworks.</p>

<p>You could copy it into Frameworks, but making a symlink ensures it always up to date on your dev machine.</p></p>


