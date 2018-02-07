# [ISS-6] Perfect-Notifications test error

[XML Source](../xml/ISS-6.xml)
<p><p>Looks like the tests have not been updated for a refactoring</p>


<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: bash.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
$ swift test
Compile Swift Module 'PerfectNotificationsTestSuite' (1 sources)
Perfect-Notifications/Tests/PerfectNotifications/PerfectNotificationsTests.swift:8:44: error: cannot call value of non-function type 'module&lt;PerfectNotifications&gt;'
        XCTAssertEqual(PerfectNotifications().text, <span class="code-quote">"Hello, World!"</span>)
                       ~~~~~~~~~~~~~~~~~~~~^
&lt;unknown&gt;:0: error: build had 1 command failures
error: exit(1): /Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2016-06-20-a.xctoolchain/usr/bin/swift-build-tool -f /.../Perfect-Notifications/.build/debug.yaml test

</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Resolved|Done|[Jonathan Guthrie](jono)|[Jonathan Guthrie]($jono)





Created|Mon, 11 Jul 2016 11:26:30 -0400
-------|--------------
Updated|Mon, 11 Jul 2016 17:24:55 -0400
Resolved|Mon, 11 Jul 2016 17:24:55 -0400


## Comments




### Mon, 11 Jul 2016 17:24:55 -0400 / jono 

<p><p>Fixed <img class="emoticon" src="http://jira.perfect.org:8080/images/icons/emoticons/smile.png" height="16" width="16" align="absmiddle" alt="" border="0"/></p></p>


