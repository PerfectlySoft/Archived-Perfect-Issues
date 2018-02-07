# [ISS-11] Perfect-CURL test fails

[XML Source](./xml/ISS-11.xml)
<p><p>CI log attached:</p>


<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
Test Suite 'All tests' started at 22:51:47.856
Test Suite 'debug.xctest' started at 22:51:47.857
Test Suite 'PerfectCURLTests' started at 22:51:47.857
Test Case 'PerfectCURLTests.testCURLPost' started at 22:51:47.857
Test Case 'PerfectCURLTests.testCURLPost' passed (0.033 seconds).
Test Case 'PerfectCURLTests.testCURLHeader' started at 22:51:47.890
Test Case 'PerfectCURLTests.testCURLHeader' passed (0.02 seconds).
Test Case 'PerfectCURLTests.testCURLAsync' started at 22:51:47.910
/<span class="code-keyword">var</span>/atlassian/application-data/bamboo/bamboo-home/xml-data/build-dir/PC-CURL-JOB1/Tests/PerfectCURL/PerfectCURLTests.swift:76: error: PerfectCURLTests.testCURLAsync : XCTAssertTrue failed - Request error code -1
/<span class="code-keyword">var</span>/atlassian/application-data/bamboo/bamboo-home/xml-data/build-dir/PC-CURL-JOB1/Tests/PerfectCURL/PerfectCURLTests.swift:79: error: PerfectCURLTests.testCURLAsync : XCTAssertTrue failed - 0
/<span class="code-keyword">var</span>/atlassian/application-data/bamboo/bamboo-home/xml-data/build-dir/PC-CURL-JOB1/Tests/PerfectCURL/PerfectCURLTests.swift:80: error: PerfectCURLTests.testCURLAsync : XCTAssertTrue failed - 
/<span class="code-keyword">var</span>/atlassian/application-data/bamboo/bamboo-home/xml-data/build-dir/PC-CURL-JOB1/Tests/PerfectCURL/PerfectCURLTests.swift:81: error: PerfectCURLTests.testCURLAsync : XCTAssertTrue failed - 
Test Case 'PerfectCURLTests.testCURLAsync' failed (0.0 seconds).
Test Case 'PerfectCURLTests.testCURL' started at 22:51:47.911
Test Case 'PerfectCURLTests.testCURL' passed (0.276 seconds).
Test Suite 'PerfectCURLTests' failed at 22:51:48.187
	 Executed 4 tests, with 4 failures (0 unexpected) in 0.329 (0.329) seconds
Test Suite 'debug.xctest' failed at 22:51:48.187
	 Executed 4 tests, with 4 failures (0 unexpected) in 0.329 (0.329) seconds
Test Suite 'All tests' failed at 22:51:48.187
	 Executed 4 tests, with 4 failures (0 unexpected) in 0.329 (0.329) seconds
</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Resolved|Done|[Jonathan Guthrie](jono)|[Kyle Jessup]($kjessup)





Created|Mon, 11 Jul 2016 13:37:08 -0400
-------|--------------
Updated|Mon, 11 Jul 2016 17:25:43 -0400
Resolved|Mon, 11 Jul 2016 17:25:43 -0400


## Comments




### Mon, 11 Jul 2016 17:25:43 -0400 / jono 

<p><p>fixed</p></p>


