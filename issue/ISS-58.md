# [ISS-58] WebRequest has no method for accessing body

[XML Source](./xml/ISS-58.xml)
<p><p>The current implementation of <tt>WebRequest</tt> appears to try to assume/do too much.  Particularly in the event of POSTing <tt>Content-type:  application/json</tt>, I should be able to post a document body with a properly formed JSON string.  Then, in my handler I can access the body directly (what appears to be <tt>request.connection.stdin</tt> but that is protected) without any "intelligence" from <tt>postParams</tt> processing.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[iAchieved.it](iachievedit)|[Unassigned]($-1)





Created|Sat, 19 Dec 2015 14:32:00 -0500
-------|--------------
Updated|Mon, 21 Dec 2015 10:28:49 -0500
Resolved|


## Comments




### Mon, 21 Dec 2015 10:28:49 -0500 / kjessup 

<p><p>Correct and thank you for the feedback.</p>

<p>I added <tt>WebRequest.postBodyBytes</tt> and <tt>WebRequest.postBodyString</tt> to provide access to this data as either <span class="error">&#91;UInt8&#93;</span> or String, respectively.</p>

<p>I tested using URL Routing example &amp; curl on the cli and was able to grab the raw data as expected.</p>

<p>curl --data "</p>
{\"id\":123}
<p>" <a href="http://0.0.0.0:8181/raw" class="external-link" rel="nofollow">http://0.0.0.0:8181/raw</a> --header "Content-Type:application/json"</p>

<p>Thank you!</p></p>


