# [ISS-47] Add Ubuntu 14.04 support by fixing libicu symbol naming issues

[XML Source](./xml/ISS-47.xml)
<p><p>This pull request fixes issue <a href="http://jira.perfect.org:8080/browse/ISS-46" title="PerfectLib compiled, but PerfectServer failed" class="issue-link" data-issue-key="ISS-46">ISS-46</a> by wrapping all usage of libicu functions from Swift code in dumb C wrappers. The libicu headers are interposed with custom ones that will first attempt to load the system header and fall back on the included ones. The interposed headers are also where the dumb C wrapper functions are defined (as <tt>static inline</tt> so we don't need to add more .c files to the build process).</p>

<p>I have verified that this successfully builds and runs on both Ubuntu 14.04 and Mac OS X. I assume it will still run just fine on Ubuntu 15.10, since it will use the system's headers on Ubuntu. I believe that OS X is the only system where the included headers will continue to be used.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[C0deH4cker](C0deH4cker)|[Unassigned]($-1)





Created|Sat, 12 Dec 2015 04:15:22 -0500
-------|--------------
Updated|Mon, 14 Dec 2015 09:24:18 -0500
Resolved|


## Comments




### Sat, 12 Dec 2015 04:15:23 -0500 / claassistant 

<p><p>[!<a href="https://cla-assistant.io/pull/badge/signed" class="external-link" rel="nofollow">CLA assistant check</a>](<a href="https://cla-assistant.io/PerfectlySoft/Perfect?pullRequest=33" class="external-link" rel="nofollow">https://cla-assistant.io/PerfectlySoft/Perfect?pullRequest=33</a>) &lt;br/&gt;All committers have accepted the CLA.</p></p>


