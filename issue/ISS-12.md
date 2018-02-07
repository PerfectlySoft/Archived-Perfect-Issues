# [ISS-12] Perfect-FastCGI build fail - ubuntu

[XML Source](../xml/ISS-12.xml)
<p><p>CI log (relevant portion)</p>


<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
Compile Swift Module 'PerfectFastCGI' (3 sources)
09-Jul-2016 22:56:38	Sources/FastCGIServer.swift:80:22: error: use of unresolved identifier 'S_IRWXU'
09-Jul-2016 22:56:38	                chmod(name, mode_t(S_IRWXU|S_IRWXO|S_IRWXG))
09-Jul-2016 22:56:38	                                   ^~~~~~~
09-Jul-2016 22:56:38	Sources/FastCGIServer.swift:80:30: error: use of unresolved identifier 'S_IRWXO'
09-Jul-2016 22:56:38	                chmod(name, mode_t(S_IRWXU|S_IRWXO|S_IRWXG))
09-Jul-2016 22:56:38	                                           ^~~~~~~
09-Jul-2016 22:56:38	Sources/FastCGIServer.swift:80:38: error: use of unresolved identifier 'S_IRWXG'
09-Jul-2016 22:56:38	                chmod(name, mode_t(S_IRWXU|S_IRWXO|S_IRWXG))
09-Jul-2016 22:56:38	                                                   ^~~~~~~

</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Resolved|Done|[Jonathan Guthrie](jono)|[Kyle Jessup]($kjessup)





Created|Mon, 11 Jul 2016 13:38:29 -0400
-------|--------------
Updated|Mon, 11 Jul 2016 17:26:22 -0400
Resolved|Mon, 11 Jul 2016 17:26:22 -0400


## Comments




### Mon, 11 Jul 2016 17:26:22 -0400 / jono 

<p><p>Fixed test</p></p>


