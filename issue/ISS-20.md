# [ISS-20] MySQL.Results objects do not handle NULL values in result sets

[XML Source](../xml/ISS-20.xml)
<p><p>If a result set (class <tt>Result</tt>) includes a NULL value, then the <tt>Element</tt> (aka <tt>String</tt> array) returned by <tt>MySQL.storeResults()</tt> does not include that value. For example if a result set has three fields, then each row in the result set should be a <tt>String</tt> array with three items. Instead, any row with at least one NULL value will be a <tt>String</tt> array with less than three items.</p>

<p>With this interface, the caller cannot know which of the fields were NULL.</p>

<p>Here is a test that fails:</p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: swift.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
mysql.query(statement: <span class="code-quote">"DROP TABLE IF EXISTS test"</span>)

let qres = mysql.query(statement: <span class="code-quote">"CREATE TABLE test (id INT, d DOUBLE, s VARCHAR(1024))"</span>)
XCTAssert(qres == <span class="code-keyword">true</span>, mysql.errorMessage())

let list = mysql.listTables(wildcard: <span class="code-quote">"test"</span>)
XCTAssert(list.count &gt; 0)

let ires = mysql.query(statement: <span class="code-quote">"INSERT INTO test (id,d,s) VALUES (1,NULL,\"</span>Row 1\<span class="code-quote">")"</span>)
XCTAssert(ires == <span class="code-keyword">true</span>, mysql.errorMessage())

let sres2 = mysql.query(statement: <span class="code-quote">"SELECT id,d,s FROM test"</span>)
XCTAssert(sres2 == <span class="code-keyword">true</span>, mysql.errorMessage())

let results = mysql.storeResults()!
XCTAssert(results.numRows() == 1)
XCTAssert(results.numFields() == 3)  <span class="code-comment">// numFields is 2</span>
</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Mike Greiner](mgreiner)|[Unassigned]($-1)





Created|Wed, 25 May 2016 23:40:54 -0400
-------|--------------
Updated|Fri, 27 May 2016 10:05:03 -0400
Resolved|




