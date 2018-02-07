# [ISS-17] Rows returned as array of strings

[XML Source](./xml/ISS-17.xml)
<p><p>When fetching a row such as <tt>row = results.next()</tt> it returns an Element, and getting the fields using <tt>row<span class="error">&#91;0&#93;</span></tt> etc. This makes ugly code. In other languages I can do something like <tt>row<span class="error">&#91;&quot;columnName&quot;&#93;</span></tt> to get the data I'm looking for.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Cannot Reproduce|[Daniel P Burton](dpburton)|[Jonathan Guthrie]($jono)





Created|Sat, 30 Apr 2016 12:47:27 -0400
-------|--------------
Updated|Wed, 27 Jul 2016 18:04:23 -0400
Resolved|Wed, 27 Jul 2016 18:04:23 -0400




