# [ISS-82] Suggest: use tyrone-sudeium/JSONCore instead of JSON.swift

[XML Source](./xml/ISS-82.xml)
<p><p>I tried tyrone-sudeium/JSONCore, it's Foundation free. I try serialize ["ad":[["i": -41451, "i2": 41451, "d": -42E+2, "t": true, "f": false, "n": nil, "a":<span class="error">&#91;1, 2, 3, 4&#93;</span>], <span class="error">&#91;&quot;another&quot;:&quot;one&quot;&#93;</span>]] and it works properly.<br/>
JSON.swift still have a lot of work to make it work. I think we should just use tyrone-sudeium/JSONCore for JSON parse/serialization and focus on some other Perfect module.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Felix](SimpleFelix)|[Unassigned]($-1)





Created|Fri, 15 Jan 2016 01:11:33 -0500
-------|--------------
Updated|Wed, 22 Jun 2016 13:38:41 -0400
Resolved|


## Comments




### Mon, 7 Mar 2016 06:57:56 -0500 / alexandros-s 

<p><p>:+1:  I agree that is a good idea to depend on external sources for now and later if it is proved necessary to remove the dependency and replace it with a home brewed one. I also have a strong feeling that a JSON parser is out of the scope of this project.</p></p>


### Wed, 22 Jun 2016 13:38:41 -0400 / jonog 

<p><p>The specific framework you use for your own JSON transactions in Perfect is your choice - you would include as a dependancy.<br/>
As always, we welcome your comments and feedback <img class="emoticon" src="http://jira.perfect.org:8080/images/icons/emoticons/smile.png" height="16" width="16" align="absmiddle" alt="" border="0"/></p></p>


