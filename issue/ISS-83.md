# [ISS-83] Make useful String methods public

[XML Source](./xml/ISS-83.xml)
<p><p>Some useful String methods </p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">(ex.stringByReplacingString())</pre>
</div></div>
<p> are internal.<br/>
I want to use these methods in my project.</p>

<ul class="alternate" type="square">
	<li><span class="error">&#91;x&#93;</span> stringByReplacingString(find: String, withString: String)</li>
	<li><span class="error">&#91;x&#93;</span> substringTo(index: String.Index)</li>
	<li><span class="error">&#91;x&#93;</span> substringWith(range: Range&lt;String.Index&gt;)</li>
</ul>
</p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Takeo Namba](groovelab)|[Unassigned]($-1)





Created|Fri, 15 Jan 2016 10:00:34 -0500
-------|--------------
Updated|Tue, 1 Mar 2016 11:14:34 -0500
Resolved|


## Comments




### Fri, 15 Jan 2016 10:06:47 -0500 / groovelab 

<p><p>if </p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: stringbyreplacingstring.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>()</pre>
</div></div>
<p> is public, I can write below code </p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">
extension <span class="code-object">String</span> {
    <span class="code-keyword">var</span> htmlBrString: <span class="code-object">String</span> {
        <span class="code-keyword">return</span> stringByReplacingString(<span class="code-quote">"\r\n"</span>, withString: <span class="code-quote">"\n"</span>).stringByReplacingString(<span class="code-quote">"\n"</span>, withString: <span class="code-quote">"&lt;br&gt;"</span>)
    }
}
</pre>
</div></div></p>


