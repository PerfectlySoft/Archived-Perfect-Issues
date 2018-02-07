# [ISS-13] Perfect-HTTPServer test syntax error

[XML Source](./xml/ISS-13.xml)
<p><p>From CI:</p>


<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
Compile Swift Module 'PerfectHTTPServerTestSuite' (1 sources)
Tests/PerfectHTTPServer/PerfectHTTPServerTests.swift:17:28: error: 'formatDate' is inaccessible due to 'internal' protection level
                <span class="code-keyword">if</span> let result = dateThen.formatDate(format: formatStr){
                                         ^
&lt;unknown&gt;:0: note: 'formatDate' declared here
</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Done|[Jonathan Guthrie](jono)|[Kyle Jessup]($kjessup)





Created|Mon, 11 Jul 2016 13:40:54 -0400
-------|--------------
Updated|Mon, 11 Jul 2016 15:17:13 -0400
Resolved|Mon, 11 Jul 2016 15:17:04 -0400


## Comments




### Mon, 11 Jul 2016 15:16:46 -0400 / jono 

<p><p>Fixed</p></p>


