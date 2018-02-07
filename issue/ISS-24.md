# [ISS-24] MySQL - Failing tests for varchars

[XML Source](./xml/ISS-24.xml)
<p><p>I came across this library and thought of contributing to it. Cloned the repo on the system and started with tests. When I ran <tt>swift test</tt> after <tt>swift build</tt>, encountered two failing tests.</p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: swift.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
/testcodes/Perfect-MySQL/Tests/MySQL/MySQLTests.swift:330: error: -[MySQLTestSuite.MySQLTests testQueryStmt2] : XCTAssertTrue failed - 1366 Incorrect string value: '\xF0\x9F\x91\xBB' <span class="code-keyword">for</span> column 'varchar' at row 1 - 1366 Incorrect string value: '\xF0\x9F\x91\xBB' <span class="code-keyword">for</span> column 'varchar' at row 1
/testcodes/Perfect-MySQL/Tests/MySQL/MySQLTests.swift:330: error: -[MySQLTestSuite.MySQLTests testQueryStmt2] : XCTAssertTrue failed - 1366 Incorrect string value: '\xF0\x9F\x91\xBB' <span class="code-keyword">for</span> column 'varchar' at row 1 - 1366 Incorrect string value: '\xF0\x9F\x91\xBB' <span class="code-keyword">for</span> column 'varchar' at row 1
</pre>
</div></div>

<p>Swift version:</p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
Apple Swift version 3.0 (swiftlang-800.0.33.1 clang-800.0.31)
Target: x86_64-apple-macosx10.9
</pre>
</div></div>

<p>Might be helpful <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=kjessup" class="user-hover" rel="kjessup">Kyle Jessup</a></p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Won't Do|[Piyush Chauhan](piyushchauhan2011)|[Kyle Jessup]($kjessup)





Created|Sat, 16 Jul 2016 06:50:36 -0400
-------|--------------
Updated|Thu, 1 Feb 2018 11:28:02 -0500
Resolved|Thu, 1 Feb 2018 11:28:01 -0500


## Comments




### Thu, 1 Feb 2018 11:28:02 -0500 / rocky 

<p><p>mysql 5.7.21+ doesn't have such an issue.<br/>
Tested on both macOS (10.13) and Linux (Ubuntu 16.04)</p></p>


