# [ISS-7] Perfect-PostgreSQL test errors

[XML Source](../xml/ISS-7.xml)
<p><p>Test log output below:</p>


<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
Compile Swift Module 'PostgreSQLTestSuite' (2 sources)
PostgreSQLTests.swift:41:20: error: binary <span class="code-keyword">operator</span> '==' cannot be applied to operands of type 'PGConnection.StatusType' and '_'
                XCTAssert(status == .OK)
                          ~~~~~~ ^  ~~~
PostgreSQLTests.swift:41:20: note: expected an argument list of type '(PGConnection.StatusType, PGConnection.StatusType)'
                XCTAssert(status == .OK)
                                 ^
PostgreSQLTests.swift:49:20: error: binary <span class="code-keyword">operator</span> '==' cannot be applied to operands of type 'PGConnection.StatusType' and '_'
                XCTAssert(status == .OK)
                          ~~~~~~ ^  ~~~
PostgreSQLTests.swift:49:20: note: expected an argument list of type '(PGConnection.StatusType, PGConnection.StatusType)'
                XCTAssert(status == .OK)
                                 ^
PostgreSQLTests.swift:52:41: error: type 'PGResult.StatusType' has no member 'TuplesOK'
                XCTAssertEqual(res.status(), PGResult.StatusType.TuplesOK)
                                             ~~~~~~~~~^~~~~~~~~~ ~~~~~~~~
PostgreSQLTests.swift:68:20: error: binary <span class="code-keyword">operator</span> '==' cannot be applied to operands of type 'PGConnection.StatusType' and '_'
                XCTAssert(status == .OK)
                          ~~~~~~ ^  ~~~
PostgreSQLTests.swift:68:20: note: expected an argument list of type '(PGConnection.StatusType, PGConnection.StatusType)'
                XCTAssert(status == .OK)
                                 ^
PostgreSQLTests.swift:71:41: error: type 'PGResult.StatusType' has no member 'TuplesOK'
                XCTAssertEqual(res.status(), PGResult.StatusType.TuplesOK)
                                             ~~~~~~~~~^~~~~~~~~~ ~~~~~~~~
PostgreSQLTests.swift:90:20: error: binary <span class="code-keyword">operator</span> '==' cannot be applied to operands of type 'PGConnection.StatusType' and '_'
                XCTAssert(status == .OK)
                          ~~~~~~ ^  ~~~
PostgreSQLTests.swift:90:20: note: expected an argument list of type '(PGConnection.StatusType, PGConnection.StatusType)'
                XCTAssert(status == .OK)
                                 ^
PostgreSQLTests.swift:93:41: error: type 'PGResult.StatusType' has no member 'TuplesOK'
                XCTAssertEqual(res.status(), PGResult.StatusType.TuplesOK, res.errorMessage())
                                             ~~~~~~~~~^~~~~~~~~~ ~~~~~~~~
</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Done|[Jonathan Guthrie](jono)|[Jonathan Guthrie]($jono)





Created|Mon, 11 Jul 2016 11:30:33 -0400
-------|--------------
Updated|Wed, 27 Jul 2016 16:02:52 -0400
Resolved|Wed, 27 Jul 2016 16:02:52 -0400


## Comments




### Wed, 27 Jul 2016 15:44:50 -0400 / jono 

<p><p>These errors fixed</p></p>


