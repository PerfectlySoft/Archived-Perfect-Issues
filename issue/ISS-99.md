# [ISS-99] HTTP Server, unicode folder name

[XML Source](../xml/ISS-99.xml)
<p><p>I followed this example to create my demo app: <a href="https://github.com/PerfectlySoft/Perfect/blob/master/PerfectServer/main_http.swift" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect/blob/master/PerfectServer/main_http.swift</a></p>

<p>HTTP Server to host a static website. This static website contains a folder containing unicode characters, example:  <tt>/中文/index.html</tt></p>

<p>Try to access <tt><a href="http://localhost:8181/" class="external-link" rel="nofollow">http://localhost:8181/</a>中文/index.html</tt></p>

<p>Error: <tt>The file "/%E4%B8%AD%E6%96%87/index.html" was not found.</tt></p>

<p>GitHub Pages does support this case. Deploy this static website to GitHub Pages and there is no similar issue.  GitHub Pages support both <tt>/中文/index.html</tt> and <tt>/%E4%B8%AD%E6%96%87/index.html</tt>. You can use either to access the page.</p>

<p>Let me know if you need any more details. </p>

<p>Thank you for your wonderful work!</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Tyler Long](tylerlong)|[Unassigned]($-1)





Created|Sun, 24 Jan 2016 05:28:20 -0500
-------|--------------
Updated|Tue, 21 Jun 2016 17:39:37 -0400
Resolved|


## Comments




### Tue, 21 Jun 2016 17:39:37 -0400 / jonog 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=tylerlong" class="user-hover" rel="tylerlong">Tyler Long</a> I'm closing this issue as <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=SimpleFelix" class="user-hover" rel="SimpleFelix">Felix</a> has submitted a PR which has been accepted and addresses your problem. Thanks!</p></p>


