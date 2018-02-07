# [ISS-57] Trailing URL Variables not placed in urlVariables dictionary

[XML Source](./xml/ISS-57.xml)
<p><p>I would expect <tt>urlVariables</tt> to contain an entry for <tt>id</tt> in the following case:</p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">
Routing.Routes[<span class="code-quote">"GET"</span>, <span class="code-quote">"/device/{id}"</span>]
</pre>
</div></div>

<p>It doesn't.  Adding a trailing component to the URL it does get populated:</p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">
Routing.Routes[<span class="code-quote">"GET"</span>, <span class="code-quote">"/device/{id}/show"</span>]
</pre>
</div></div>

<p>Extending further,</p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">
Routing.Routes[<span class="code-quote">"GET"</span>, <span class="code-quote">"/device/{id}/show/{sub}"</span>]
</pre>
</div></div>

<p><tt>sub</tt> is not in the the <tt>urlVariables</tt> dictionary but <tt>id</tt> is.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[iAchieved.it](iachievedit)|[Unassigned]($-1)





Created|Sat, 19 Dec 2015 12:43:09 -0500
-------|--------------
Updated|Mon, 21 Dec 2015 09:54:01 -0500
Resolved|


## Comments




### Mon, 21 Dec 2015 09:54:01 -0500 / kjessup 

<p><p>Fixed. Thank you!</p></p>


