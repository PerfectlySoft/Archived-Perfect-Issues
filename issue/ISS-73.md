# [ISS-73] can not read static file in using URL routing on Perfect Server HTTP

[XML Source](../xml/ISS-73.xml)
<p><p>if running Perfect Server HTTP and using URL routing, can not read static file.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Takeo Namba](groovelab)|[Unassigned]($-1)





Created|Thu, 7 Jan 2016 07:32:46 -0500
-------|--------------
Updated|Mon, 11 Jan 2016 04:36:49 -0500
Resolved|


## Comments




### Mon, 11 Jan 2016 04:36:29 -0500 / groovelab 

<p><p><a href="https://github.com/PerfectlySoft/Perfect/commit/82c61a07e18503eec4bed42335c447de7df1e3c7#diff-126950c42d14964213788e470f4f91c5R37" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect/commit/82c61a07e18503eec4bed42335c447de7df1e3c7#diff-126950c42d14964213788e470f4f91c5R37</a></p>

<p>Because of </p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: staticfilehandler.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre></pre>
</div></div>
<p>, this PR is no longer necessary</p></p>


