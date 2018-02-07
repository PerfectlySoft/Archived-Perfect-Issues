# [ISS-35] tvOS support

[XML Source](../xml/ISS-35.xml)
<p><p>After <a href="https://twitter.com/nvh/status/670320301566205953" class="external-link" rel="nofollow">this</a> I feel obliged to share some of the process here. Ideally I would like to turn this into a pull request, but as my hacking isn't really ready for merging yet, I'll just share the steps I remember here, so the thinking doesn't have to be performed twice <img class="emoticon" src="http://jira.perfect.org:8080/images/icons/emoticons/smile.png" height="16" width="16" align="absmiddle" alt="" border="0"/></p>

<ul class="alternate" type="square">
	<li>[ ] Copied OSX target and changed the SDK to tvOS</li>
	<li>[ ] Added <tt>import Foundation</tt> to some files</li>
	<li>[ ] Removed <tt>SysProcess</tt> from the tvOS target</li>
	<li>[ ] Built custom tvOS versions of libcurl.a libssl.a and lib crypto.a using <a href="https://github.com/jasonacox/Build-OpenSSL-cURL" class="external-link" rel="nofollow">this</a></li>
	<li>[ ] Built custom version of libevent using <a href="https://gist.github.com/nvh/9b8c60b41df7c665c900" class="external-link" rel="nofollow">this</a> (I'm not really sure of the removal of fork in this case, but as it's only in tests, it should be okay)</li>
	<li>[ ] Replaced the other libraries (libicu and libsqlite) with the tvOS versions provided by Apple</li>
</ul>


<p>A problem that I haven't solved yet, but shouldn't be hard is that the creation of the session database currently fails, because it uses a file it can't access. This is also a theoretical problem: As we are only allowed to store cache on appleTV, does in matter if the session database gets wiped every time the app quits? Probably not, depending on your use case.</p>

<p>I hope I covered everything. As I said, I will try and fix this up in a PR soon!</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Niels van Hoorn](nvh)|[Unassigned]($-1)





Created|Mon, 30 Nov 2015 04:06:01 -0500
-------|--------------
Updated|Tue, 21 Jun 2016 10:41:45 -0400
Resolved|


## Comments




### Sat, 5 Dec 2015 09:45:51 -0500 / igor9silva 

<p><p>+1 for official AppleTV support. Would like to help.</p></p>


### Sun, 13 Dec 2015 03:24:28 -0500 / jhoughjr 

<p><p>I could really use this, wouldn't mind helping, though my ObjC legs are sturdier than my Swift wings currently.</p></p>


### Tue, 21 Jun 2016 10:41:45 -0400 / jonog 

<p><p>Hi Niels - Closing the issue for now although I can't see a PR from you on this. If you did manage to make some further progress on it, please let us know. Note that there's been a significant movement forward since December '15! Thanks!</p></p>


