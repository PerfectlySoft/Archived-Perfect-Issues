# [ISS-70] Add attributes to cookie

[XML Source](./xml/ISS-70.xml)
<p><p>session configuration property don't affect cookie attributes(domain, path, secure, http only).<br/>
fix to add attributes to cookie.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Takeo Namba](groovelab)|[Unassigned]($-1)





Created|Wed, 6 Jan 2016 10:26:34 -0500
-------|--------------
Updated|Mon, 11 Jan 2016 09:31:29 -0500
Resolved|


## Comments




### Wed, 6 Jan 2016 10:26:36 -0500 / claassistant 

<p><p>[!<a href="https://cla-assistant.io/pull/badge/signed" class="external-link" rel="nofollow">CLA assistant check</a>](<a href="https://cla-assistant.io/PerfectlySoft/Perfect?pullRequest=57" class="external-link" rel="nofollow">https://cla-assistant.io/PerfectlySoft/Perfect?pullRequest=57</a>) &lt;br/&gt;All committers have accepted the CLA.</p></p>


### Wed, 6 Jan 2016 10:30:04 -0500 / groovelab 

<p><p>sample code in PerfectHandlers.swift</p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">
class IndexHandler: RequestHandler {
	func handleRequest(request: WebRequest, response: WebResponse) {
		let sessionConfiguration = SessionConfiguration(<span class="code-quote">"session"</span>, expires: 15, useCookie: <span class="code-keyword">true</span>, useLink: <span class="code-keyword">false</span>, useAuto: <span class="code-keyword">false</span>, useNone: <span class="code-keyword">false</span>, id: <span class="code-quote">"idid"</span>, domain: <span class="code-quote">"localhost"</span>, path: <span class="code-quote">"/"</span>, cookieExpires: 15, rotate: <span class="code-keyword">false</span>, secure: <span class="code-keyword">false</span>, httpOnly: <span class="code-keyword">false</span>)
		<span class="code-keyword">do</span> {
			let session = <span class="code-keyword">try</span> response.getSession(<span class="code-quote">"session"</span>, withConfiguration: sessionConfiguration)
			print(session)
		} <span class="code-keyword">catch</span> (let e) {
			print(e)
		}

		response.appendBodyString(<span class="code-quote">"Index handler: You accessed path \(request.requestURI())"</span>)
		response.requestCompletedCallback()
	}
}
</pre>
</div></div></p>


