# [ISS-5] Perfect-MongoDB build error - Ubuntu - mongoc.h path

[XML Source](./xml/ISS-5.xml)
<p><p>On Ubuntu the path location by default:</p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
$ locate mongoc.h
/usr/include/libmongoc-1.0/mongoc.h
</pre>
</div></div>

<p>Build script seems to be looking in a different location:</p>


<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
/Packages/libmongoc-0.2.0/module.modulemap:2:12: error: header '/usr/local/include/libmongoc-1.0/mongoc.h' not found
</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Open|Unresolved|[Jonathan Guthrie](jono)|[Jonathan Guthrie]($jono)





Created|Mon, 11 Jul 2016 11:02:04 -0400
-------|--------------
Updated|Wed, 27 Jul 2016 19:48:13 -0400
Resolved|




