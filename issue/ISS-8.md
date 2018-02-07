# [ISS-8] Perfect-Redis test error

[XML Source](../xml/ISS-8.xml)
<p><p>Test output below:</p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
Compile Swift Module 'PerfectRedisTestSuite' (1 sources)
Linking .build/debug/PerfectRedisTests.xctest
Test Suite 'All tests' started at 15:33:56.781
Test Suite 'debug.xctest' started at 15:33:56.816
Test Suite 'PerfectRedisTests' started at 15:33:56.816
Test Case 'PerfectRedisTests.testPing' started at 15:33:56.816
PerfectRedisTests.swift:53: error: PerfectRedisTests.testPing : XCTAssertTrue failed - Unexpected response error(<span class="code-quote">"NET"</span>, <span class="code-quote">"Failed to write all bytes"</span>)
Test Case 'PerfectRedisTests.testPing' failed (0.004 seconds).
Test Suite 'PerfectRedisTests' failed at 15:33:56.820
	 Executed 1 test, with 1 failure (0 unexpected) in 0.004 (0.004) seconds
Test Suite 'debug.xctest' failed at 15:33:56.820
	 Executed 1 test, with 1 failure (0 unexpected) in 0.004 (0.004) seconds
Test Suite 'All tests' failed at 15:33:56.820
	 Executed 1 test, with 1 failure (0 unexpected) in 0.004 (0.004) seconds
</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Resolved|Done|[Jonathan Guthrie](jono)|[Jonathan Guthrie]($jono)





Created|Mon, 11 Jul 2016 11:36:15 -0400
-------|--------------
Updated|Mon, 11 Jul 2016 16:04:01 -0400
Resolved|Mon, 11 Jul 2016 16:04:01 -0400


## Comments




### Mon, 11 Jul 2016 16:03:48 -0400 / jono 

<p><p>Fixed</p></p>


