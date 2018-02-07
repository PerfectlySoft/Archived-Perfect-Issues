# [ISS-9] Perfect-WebSockets test error

[XML Source](../xml/ISS-9.xml)
<p><p>From CI:</p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
Compile Swift Module 'PerfectWebSocketsTestSuite' (1 sources)
/.../Tests/PerfectWebSockets/PerfectWebSocketsTests.swift:8:41: error: cannot call value of non-function type 'module&lt;PerfectWebSockets&gt;'
        XCTAssertEqual(PerfectWebSockets().text, <span class="code-quote">"Hello, World!"</span>)
                       ~~~~~~~~~~~~~~~~~^~
                                        
</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Resolved|Done|[Jonathan Guthrie](jono)|[Kyle Jessup]($kjessup)





Created|Mon, 11 Jul 2016 13:28:00 -0400
-------|--------------
Updated|Mon, 11 Jul 2016 17:25:21 -0400
Resolved|Mon, 11 Jul 2016 17:25:21 -0400


## Comments




### Mon, 11 Jul 2016 17:25:21 -0400 / jono 

<p><p>Fixed</p></p>


