# [ISS-42] support for web sockets and socket.io planned?

[XML Source](../xml/ISS-42.xml)
<p><p>We use socket.io in our current Swift iOS app and would love to move from Node.js to perfect.  </p>

<p>Please consider adding socket.io support into your plans.  A roadmap of features (and a place to vote for your favorite) would be a great addition to this project.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Done|[cwoloszynski](cwoloszynski)|[Jonathan Guthrie]($jono)





Created|Sun, 6 Dec 2015 20:30:46 -0500
-------|--------------
Updated|Wed, 27 Jul 2016 17:51:34 -0400
Resolved|Wed, 27 Jul 2016 17:51:34 -0400


## Comments




### Sun, 6 Dec 2015 20:59:02 -0500 / tranhieutt 

<p><p>goog idea.<br/>
I hope perfect'll develop soon.</p></p>


### Sun, 6 Dec 2015 21:08:55 -0500 / seanstephens 

<p><p>We do have a list of features (and unpublished functions). Any suggestions on a voting mechanism? (Please don't say Reddit - not that we don't love Reddit, but something more succinct and manageable would be nice).</p></p>


### Mon, 7 Dec 2015 07:00:51 -0500 / cwoloszynski 

<p><p>I have looked around a bit on the site and I don't see the list of planned features anywhere public.  Is it out there yet or are you still working on how to present it and get feedback from the community?</p>

<p>I don't have a specific suggestion on the voting process.  I recently used one where each user account got a number of stars (10 initially) and then they could allocate 1..3 stars to any suggestion and they could also create new suggested changes.  I think that the site (I am having a moment where I cannot remember this site, ugh!) also periodically grants new stars to accounts to allow continued involvement in the process.  </p>

<p>I'll see if I can find the site/voting mechanism they used.  </p>

<p>Keep up the great work with this project and site!  Once there is a place for voting for features, I'd like to add the following items to the list:</p>
<ul>
	<li>socket.io support</li>
	<li>URL routing support</li>
	<li>policy rules for accessing various 'controllers'</li>
	<li>authentication support (AWT)</li>
</ul>


<p>I am coming from Node.js/Sails and want to bring some of the best of that to Swift</p></p>


### Mon, 7 Dec 2015 07:09:20 -0500 / cwoloszynski 

<p><p>Ah, found it.  You might want to consider the tool used by good notes (<a href="http://feedback.goodnotesapp.com/forums/191274-goodnotes-ideas" class="external-link" rel="nofollow">http://feedback.goodnotesapp.com/forums/191274-goodnotes-ideas</a>)</p>

<p>It is called UserVoice (<a href="http://www.uservoice.com/" class="external-link" rel="nofollow">http://www.uservoice.com/</a>), specifically the SmartVote under Product Management.  Sadly, it is not cheap.  Perhaps they would be willing to offer some discount for GPL projects.  </p></p>


### Tue, 8 Dec 2015 07:55:34 -0500 / nickskull 

<p><p>Socket.io + URL routing would be awesome. :+1: </p></p>


### Fri, 11 Dec 2015 14:59:56 -0500 / alexzielenski 

<p><p>Is an express-like GET/POST/PUT/UPDATE/DELETE etc. HTTP request handling yet possible? As in </p>

<p>    Perfect.get("/users", </p>
{ (request, response) in ... return response.Status(.OK) })<br/>
    Perfect.get("/users", { (request, response) in ... return response.Status(.OK) }
<p>)<br/>
    Perfect.get("/users/</p>
{id}
<p>", </p>
{ (request, response) in ... return response.Status(.OK) })<br/>
    Perfect.post("/users", { (request, response) in ... return response.Status(.OK) }
<p>)<br/>
    ...<br/>
Possibly with support for middleware? I think that would really get the ball rolling.</p></p>


### Tue, 5 Jan 2016 12:44:01 -0500 / narup 

<p><p>I think it's better to have core websocket support in Perfect library, and have socket.io protocol implementation as a plugin or extension. That will open up Perfect for other websocket based subprotocol implementations</p></p>


### Wed, 27 Jul 2016 17:50:45 -0400 / jono 

<p><p>Yes, WebSockets is core Perfect functionality via the HTTP libs. <br/>
I will raise the socket.io protocol support as a feature request.</p></p>


