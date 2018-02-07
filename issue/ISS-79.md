# [ISS-79] Fix self retain cycles

[XML Source](../xml/ISS-79.xml)
<p><p>This pull request addresses the issue with possible retain cycles<br/>
References to self are now unowned or weak in closures or asynchronous blocks. <br/>
Also includes added documentation in the JSONEncode class.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Scott Gauthreaux](califrench)|[Unassigned]($-1)





Created|Tue, 12 Jan 2016 17:26:31 -0500
-------|--------------
Updated|Wed, 27 Jan 2016 11:27:54 -0500
Resolved|


## Comments




### Tue, 12 Jan 2016 17:26:34 -0500 / claassistant 

<p><p>[!<a href="https://cla-assistant.io/pull/badge/signed" class="external-link" rel="nofollow">CLA assistant check</a>](<a href="https://cla-assistant.io/PerfectlySoft/Perfect?pullRequest=66" class="external-link" rel="nofollow">https://cla-assistant.io/PerfectlySoft/Perfect?pullRequest=66</a>) &lt;br/&gt;All committers have accepted the CLA.</p></p>


### Tue, 26 Jan 2016 18:05:22 -0500 / califrench 

<p><p>This pull request addresses the <a href="https://github.com/PerfectlySoft/Perfect/issues/89" class="external-link" rel="nofollow">issue with possible retain cycles</a><br/>
References to self are now unowned or weak in closures or asynchronous blocks. <br/>
Also includes added documentation in the JSONEncode class.</p></p>


