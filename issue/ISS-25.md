# [ISS-25] Doesn't Build on Ubuntu 16.04

[XML Source](../xml/ISS-25.xml)
<p><p>Ubuntu 16.04 with 2016-06-20 Swift and 'swift build' yields:</p>

<p>Cloning <a href="https://github.com/PerfectlySoft/Perfect-mysqlclient-Linux.git" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect-mysqlclient-Linux.git</a><br/>
HEAD is now at fff9275 Update Package.swift<br/>
Resolved version: 0.3.0<br/>
warning: clang++ not found: this will cause build failure<br/>
error: nonWhitelistedFlags("Non whitelisted flags found: <span class="error">&#91;\&quot;-fabi-version=2\&quot;, \&quot;-fno-omit-frame-pointer\&quot;&#93;</span> in pc file mysqlclient")</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Reopened|Unresolved|[Shao](Synthetel)|[Kyle Jessup]($kjessup)





Created|Wed, 20 Jul 2016 01:38:38 -0400
-------|--------------
Updated|Sun, 9 Oct 2016 02:46:51 -0400
Resolved|


## Comments




### Wed, 27 Jul 2016 18:36:23 -0400 / synthetel 

<p><p>This was accidentally closed, I think.  I don't see any relevant commits since the issue was opened, so it's probably still outstanding.  Perhaps it makes sense to assign to Kyle Jessup?</p></p>


### Sat, 8 Oct 2016 10:00:11 -0400 / synthetel 

<p><p>1. This is not a duplicate issue.  MySQL build problems on 14.04 were different.<br/>
2. This issue remains.  If someone has built Perfect-MySQL on Ubuntu 16.04 without encountering this error, I'd love to learn more about the difference(s) between my environment and theirs</p></p>


### Sat, 8 Oct 2016 14:35:27 -0400 / zeev.gross.work@gmail.com 

<p><p>just check on ubuntu 16.04 LTS. </p>

<p>The file /usr/lib/x86_64-linux-gnu/pkgconfig/mysqlclient.pc needs to be edited and the flags definition<br/>
Cflags: -I$</p>
{includedir}
<p> -fabi-version=2 -fno-omit-frame-pointer should be edited (sudo) </p>
</p>


### Sun, 9 Oct 2016 00:37:30 -0400 / synthetel 

<p><p>Good day, Zeev Gross.</p>

<p>Are you suggesting that there is an issue with Ubuntu 16.04's MySQL client package?  If not, I'd suggest that the correct solution needs to involve the Perfect source-code and not the Ubuntu 16.04 MySQL client package's files.</p></p>


### Sun, 9 Oct 2016 02:46:51 -0400 / zeev.gross.work@gmail.com 

<p><p>I just noted how I handled the same issue. This is not ideal but it works. I totally agree the long term solution should come from perfect.</p></p>


