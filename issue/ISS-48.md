# [ISS-48] can't start perfectserverfcgi on Ubuntu 15.10

[XML Source](../xml/ISS-48.xml)
<p><p>Running on Ubuntu 15.10(64bit)</p>

<p>I can start </p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: perfectserverhttp```.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>.
But, I can not start </pre>
</div></div>
<p>perfectserverfcgi</p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">.

https:<span class="code-comment">//github.com/PerfectlySoft/Perfect/blob/master/PerfectLib/NetNamedPipe.swift#L82
</span>I <span class="code-keyword">catch</span> exception on <span class="code-keyword">this</span> line.
</pre>
</div></div>
<p>Unexpected networking error: 22 'Invalid argument'<tt>`</tt></p>

<p>Thanks</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Takeo Namba](groovelab)|[Unassigned]($-1)





Created|Sun, 13 Dec 2015 01:14:21 -0500
-------|--------------
Updated|Fri, 18 Dec 2015 10:21:12 -0500
Resolved|


## Comments




### Sun, 13 Dec 2015 21:36:23 -0500 / nmorenor 

<p><p>Hey, </p>

<p>Seems that I'm running on the same error, also running on Ubuntu 15.10 (64bit) the perfectserverhttp is running but not perfectserverfcgi. I did setup an apache server to use the mod_perfect.o to use the FastCGI. But when I ran the perfectserverfcgi it throws this output.</p>

<p>root@9efc196731c1:/var/www/swift/Examples/Authenticator# ../../PerfectServer/perfectserverfcgi <br/>
Current working directory: /var/www/swift/Examples/Authenticator<br/>
perfectserverfcgi: /home/buildslave/jenkins/workspace/oss-swift-linux-packages-ubuntu_15_10-one-off-build/swift/include/swift/Runtime/../../../stdlib/public/SwiftShims/RefCount.h:207: bool StrongRefCount::doDecrementShouldDeallocate() <span class="error">&#91;ClearPinnedFlag = false&#93;</span>: Assertion `newval + quantum &gt;= RC_ONE &amp;&amp; "releasing reference with a refcount of zero"' failed.<br/>
Aborted</p>

<p>The apache error log have just an entry for the 500 error:</p>

<p><span class="error">&#91;Mon Dec 14 02:27:31.761860 2015&#93;</span> <span class="error">&#91;watchdog:emerg&#93;</span> <span class="error">&#91;pid 424:tid 140440684291840&#93;</span> (500)Unknown error 500: <span class="error">&#91;client 192.168.99.1:62315&#93;</span> Unable to connect on: /var/www/swift/Examples/Authenticator/Authenticator/../perfect.fastcgi.sock 2 No such file or directory</p>

<p>Cheers</p></p>


### Mon, 14 Dec 2015 01:28:48 -0500 / djben 

<p><p>I compiled the Libs and Server on Ubuntu 15.10 (64bit) and run on the Swift 2.0 snapshot released on Dec 10. Both of the perfectserverhttp and perfectserverfcgi dumped with exactly the same message</p>

<p>Current working directory: /home/djben/Documents/Perfect/PerfectServer<br/>
perfectserverhttp: /home/buildslave/jenkins/workspace/oss-swift-linux-packages-ubuntu_15_10/swift/include/swift/Runtime/../../../stdlib/public/SwiftShims/RefCount.h:207: bool StrongRefCount::doDecrementShouldDeallocate() <span class="error">&#91;ClearPinnedFlag = false&#93;</span>: Assertion `newval + quantum &gt;= RC_ONE &amp;&amp; "releasing reference with a refcount of zero"' failed.<br/>
Aborted (core dumped)</p>

<p>Does the current working directory matter? How did you manage to get the http work? Thanks.</p></p>


### Wed, 16 Dec 2015 16:05:43 -0500 / kjessup 

<p><p>Acknowledging the crash. Trying to track it down now.</p>

<p>Thanks</p></p>


