# [ISS-37] Routing

[XML Source](../xml/ISS-37.xml)
<p><p>Hi, I can't find in doc. How I can handle routing with Perfect?</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Lukasz Solniczek](lsolniczek)|[Unassigned]($-1)





Created|Mon, 30 Nov 2015 05:56:43 -0500
-------|--------------
Updated|Mon, 21 Dec 2015 09:55:39 -0500
Resolved|


## Comments




### Mon, 30 Nov 2015 09:47:10 -0500 / makoni 

<p><p>Looks like there's now routing out of box and you should implement it by yourself using WebRequest class.</p>

<p>It would be great to add router like in Express.js</p></p>


### Mon, 30 Nov 2015 10:23:00 -0500 / lsolniczek 

<p><p>If someone, more advanced in Perfect, start working on Routing I could gladly help. </p></p>


### Thu, 10 Dec 2015 13:06:55 -0500 / brado 

<p><p>"Looks like there's routing out of the box"</p>

<p>If you are referring to routing to the top-level moustache file only, then I suppose that would be "routing out of the box". But I'm not seeing anything to support routing in a true REST sense, paths with a hierarchy. Furthermore, after throwing the server through the debugger, it appears that there may be a problem implementing routing, because rather than handling requests through what should be a controller, the "C" part of MVC, it appears it is relying on the view, the "V" part of MVC to bind to its handler. Changing this appears to require changing the innards of the HTTPServer, not a mere higher-layer handling or filter mechanism. </p>

<p>This merits a completely separate issue be filed, which I will. But I'm having a hard time seeing from the source code where REST is substantially supported in Perfect. Maybe I'm just missing it, but I'm not seeing it in doc, nor in the examples, nor in the control flow shown when running the server in the debugger. </p></p>


### Thu, 10 Dec 2015 13:26:20 -0500 / kjessup 

<p><p>The views can associate themselves with a handler name, but this is not associated with any particular class. A handler name is associated with a closure which can then return whatever class should handle the request; based on url or user agent, for example. You could potentially use different routing systems in this manner.</p>

<p>Alternately, one can register a global handler which will be called for any path which does not explicitly indicate a handler name. This is the hook through which higher level routing such as you are seeking would be added. I have it on the list to provide an example of this (I've done it before, but I want to make it nicer).</p>

<p>Using this global handler methodology, adding the handler pragma to the view itself would serve only as a sort of override.</p>

<p>However, there is a limitation currently in that the URL which is requested must exist as an actual file. Removing this is very high on the list and the required changes have already been mapped out.</p>

<p>Additionally, you should never have to alter the core HTTP of FastCGI server for this type of functionality. The WebResponse class drives most of this and it is abstracted away from the core server platform.</p>

<p>We are putting together more of a public roadmap so (potential) users can see where we currently intend to put our development time.</p>

<p>Thanks,<br/>
-Kyle</p></p>


### Fri, 11 Dec 2015 10:20:08 -0500 / kjessup 

<p><p>I've just updated our development roadmap, which includes routing high on the list. <a href="https://github.com/PerfectlySoft/Perfect/wiki/Perfect-Roadmap" class="external-link" rel="nofollow">Perfect Roadmap</a></p>

<p>I'm going to keep this issue open for discussion.</p></p>


### Fri, 11 Dec 2015 13:42:26 -0500 / makoni 

<p><p>"there's now routing out of box"</p>

<p>Oops, not "now", it had to be "no routing" <img class="emoticon" src="http://jira.perfect.org:8080/images/icons/emoticons/smile.png" height="16" width="16" align="absmiddle" alt="" border="0"/></p></p>


### Mon, 14 Dec 2015 14:50:35 -0500 / brado 

<p><p>Kyle &#8211; thanks for the response! That sheds a little light on it for me. A few responses: </p>

<p>"Alternately, one can register a global handler which will be called for any path which does not explicitly indicate a handler name. This is the hook through which higher level routing such as you are seeking would be added. I have it on the list to provide an example of this (I've done it before, but I want to make it nicer)."</p>

<p>If you could show me how to do this, that would help me tremendously. I have no problem for the time being writing routing myself &#8211; but not being able to do it, that's going to be a problem. I have a project that has to move forward (like today) and if I can route it, I can use Perfect. If not, I can't. I don't need a downloadable, complete example. If you can post snippets to show me, I'd greatly appreciate it &#8211; I can use those right now. </p>

<p>"However, there is a limitation currently in that the URL which is requested must exist as an actual file. Removing this is very high on the list and the required changes have already been mapped out."</p>

<p>That's a very high priority, and really falls into the bigger picture of how to use Perfect as a REST framework: </p>

<p>1. With respect to the quote above, we have to get that requirement removed. A response may not even have a visual representation or need a template &#8211; it may just be starting some server-side behavior or returning programmatically-created JSON.</p>

<p>2. Related, I actually could not figure out how to get a file created for any kind of hierarchical resource. For example, (and I'm just using the Authenticator project as an example) I could create a file which would facilitate a /register path, but I couldn't figure out how to get a file which would satisfy a /register/help path. In other words, any level below the top level I wasn't able to figure out how to create a file to satisfy that...i.e. I doubted that routing was even possible, much less available. It would be good to know how to do this. </p>

<p>3. In reading / tracing through source code, it appeared to me that only GET and POST HTTP methods were identified and handled. With respect to REST, it also requires PUT and DELETE method support. Also, in thinking about routing, routing shouldn't be solely dependent upon URL path, but also on the HTTP method as well, and possibly even the return Content-Type (application-json vs. text/html, for instance). </p>

<p>While these are my immediate needs, I think these are also kind of bare-minimum requirements to be able to adequately claim to support REST as a framework. Without having web service support like this, I think Perfect will have a really hard time getting traction. </p>

<p>I presently am in the process of embarking on development on several projects &#8211; if I can handle routing (I'm fine to develop it myself if Perfect allows it) then I may be able to limp by for a short while, because I think that Swift represents such a huge value proposition. But without this, my hand is going to be forced to go another framework. Is there any way you can post fixes for any of these in the next day or two? What about the example which allows a global handler? Can you post code on that? If you want to hit me offline, feel free at brado@bighillsoftware.com. Thanks.</p></p>


### Mon, 14 Dec 2015 15:58:18 -0500 / brado 

<p><p>One more note &#8211; I mentioned this in my original post above, but I want to emphasize this. In tracing through the code, and in reading the doc associated with the examples (the Tap Tracker example) it appeared to me that the following is the processing path: </p>

<p>mustache file template --&gt; get handler class associated with handler name --&gt; instantiate handler class --&gt; invoke handler class's valuesForResponse method</p>

<p>If I'm understanding all of this correctly, according to the Model-View-Controller (MVC) pattern, the template really represents the View, the handler class represents the Controller, and any model classes would represent the model. If this is correct, this is essentially routing requests through the view (template), not the controller. </p>

<p>I would propose that requests shouldn't be routed through views (mustache templates) to their controllers (handlers), but vice versa: the request should be routed first through its controller (handler) which then dispatches as necessary to its view (mustache templates), if it dispatches at all. </p>

<p>Unless I am missing something, the template is really the View, but yet it is being given the stature of the controller &#8211; it is dictating its own handling rather than the other way around, where the controller would dictate how it responds with a view. </p>

<p>Here's a question &#8211; is there any way to just simply get the request dispatched to a single controller class? The primary value of Perfect as I see it as of this moment is the Swift HTTP server, and secondarily the Swift DB connectors (though I confess I haven't used those yet). But there doesn't appear to be much in the way of web app framework or REST support here. I believe people would have a lot more leverage to use this immediately (I would) if the mustache template / handler stuff could just be bypassed entirely (i.e. it was merely one implementation of that single controller class which was optional), leaving developers with a hook where they could plug their own web app framework in. If there was a single hook through which all requests through (similar to a Java servlet, for example), that would let developers run immediately. What is there now appears to prevent much movement, without changing the base HTTP server implementation (which I have no interest in doing). </p>

<p>Any chance of just getting the request routed to a controller which can be overridden? </p></p>


### Mon, 14 Dec 2015 17:56:32 -0500 / danappelxx 

<p><p>Hey <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=brado" class="user-hover" rel="brado">Brad O'Hearne</a> just wanted to note - I don't think Perfect is meant to make REST api's, think of it more as linking client &amp; server. If you want to make an actual webapp in Swift, <a href="https://github.com/Zewo" class="external-link" rel="nofollow">Zewo</a> is probably a better fit. Take a look at the <a href="https://github.com/Zewo/Examples" class="external-link" rel="nofollow">example</a> to get a feel for it.</p></p>


### Mon, 14 Dec 2015 18:12:06 -0500 / brado 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=Danappelxx" class="user-hover" rel="Danappelxx">Dan Appel</a> &#8211; Here's the first sentence from the Perfect.org About page:</p>

<p>"What is Perfect?<br/>
Perfect is a framework for developing web and other REST services in the Swift programming language."</p>

<p>That seems pretty clear to me &#8211; I've been engaging here as if that is the goal. As I mentioned above, I don't by any means know everything about it yet, but after spending a few days with it, as of its current state right at this moment, Perfect doesn't seem to be either a web framework or built to handle REST. I certainly want it to be that...so I'm just giving suggestions first for how to make it that, but second, how to let developers run freely in that direction until it officially becomes that.</p>

<p>Thanks for the recommendation of Zewo, I'll check it out!</p>

<p>Brad</p></p>


### Tue, 15 Dec 2015 06:58:36 -0500 / julien-c 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=brado" class="user-hover" rel="brado">Brad O'Hearne</a> Also check out <a href="https://github.com/glock45/swifter" class="external-link" rel="nofollow">Swifter</a>, I think it's pretty close to what you're looking for.</p></p>


### Tue, 15 Dec 2015 10:02:05 -0500 / kjessup 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=brado" class="user-hover" rel="brado">Brad O'Hearne</a> </p>

<p>Answering a few of the questions here.<br/>
Regarding the global handler:<br/>
Check out <tt>PageHandlerRegistry.addPageHandler(generator: PageHandlerGenerator)</tt>. That adds a global "fallback" handler.</p>

<p>"With respect to the quote above, we have to get that requirement removed. A response may not even have a visual representation or need a template &#8211; it may just be starting some server-side behavior or returning programmatically-created JSON."</p>

<p>I should have this completed today.</p>

<p>"Related, I actually could not figure out how to get a file created for any kind of hierarchical resource. For example, (and I'm just using the Authenticator project as an example) I could create a file which would facilitate a /register path, but I couldn't figure out how to get a file which would satisfy a /register/help path. In other words, any level below the top level I wasn't able to figure out how to create a file to satisfy that...i.e. I doubted that routing was even possible, much less available. It would be good to know how to do this."</p>

<p>I did it like so:</p>

<p>/register.mustache<br/>
/register/help.mustache</p>

<p>You could also do it like this:</p>

<p>/register/index.mustache<br/>
/register/help.mustache</p>

<p>"In reading / tracing through source code, it appeared to me that only GET and POST HTTP methods were identified and handled. With respect to REST, it also requires PUT and DELETE method support. Also, in thinking about routing, routing shouldn't be solely dependent upon URL path, but also on the HTTP method as well, and possibly even the return Content-Type (application-json vs. text/html, for instance)."</p>

<p>The system does not differentiate between methods. You can inquire as to the current method using WebRequest.requestMethod(). Routing based on the current method will be included. It won't have direct support for content-type based routing, however the system will be flexible enough that you can check the content type and dispatch to a different handler if desired.</p>

<p>Thanks,<br/>
-Kyle</p></p>


### Wed, 16 Dec 2015 01:41:31 -0500 / c0deh4cker 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=brado" class="user-hover" rel="brado">Brad O'Hearne</a> @Danappelxx I wouldn't recommend using Zewo, at least until they fix <a href="https://github.com/Zewo/SQL/issues/1" class="external-link" rel="nofollow">this SQL injection vulnerability</a>, unless your application doesn't need to use SQL.<br/>
<em>EDIT: They fixed it!</em></p>

<p>Also, while I prefer Perfect in all other regards, Swifter definitely has Perfect beat when it comes to routing. Even though it doesn't appear to support routing based on request type (yet), it supports urls with path parameters as well as normal query parameters.</p>

<p>I am looking forward to the addition of proper routing in Perfect. Once it has that, I will for sure be using Perfect.</p></p>


### Wed, 16 Dec 2015 02:40:18 -0500 / danappelxx 

<p><p>Thanks for catching that, at @C0deH4cker! It's worth noting that the SQL Zewo repository was started 6 days ago - it's not mature yet. Come back in a few weeks and it should be ready. I urge you to take a look at the examples and consider how well designed it is to handle large applications - everything is very safe, composable, and fast. It also has a nice router, which I believe has even Swifter beat. Full disclosure - I am part of the Zewo team, though I haven't worked on the projects mentioned.</p></p>


### Wed, 16 Dec 2015 03:09:13 -0500 / c0deh4cker 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=Danappelxx" class="user-hover" rel="Danappelxx">Dan Appel</a> I wasn't aware that you were involved in the Zewo project! I haven't spent much time looking at it, since I started by browsing the examples and the SQL injection vulnerability caught my eye. Is there a central description of the project, such as a webpage for it?</p>

<p>Also, does Zewo's routing still beat Swifter's after <a href="https://github.com/glock45/swifter/pull/81" class="external-link" rel="nofollow">this pull request I wrote</a>?</p>

<p>EDIT: After looking at <a href="https://github.com/Zewo/Examples/blob/master/Sources/Todo/APIv2.swift" class="external-link" rel="nofollow">this example</a> of Zewo's routing, I'd have to say that it is indeed quite good and beats Swifter's routing. Great job on that!</p></p>


### Wed, 16 Dec 2015 14:43:14 -0500 / kjessup 

<p><p>I committed the URL routing system along with an example project.</p>

<p>It currently supports method based routing, variables and wildcards. It does not rely on the mustache template system at all, so you can produce whatever sort of content you'd like in whatever manner you wish.</p>

<p>Feedback is of course appreciated!</p>

<p>Links to relevant code:<br/>
<a href="https://github.com/PerfectlySoft/Perfect/blob/master/PerfectLib/Routing.swift" class="external-link" rel="nofollow">Routing.swift</a><br/>
<a href="https://github.com/PerfectlySoft/Perfect/blob/master/Examples/URL%20Routing/URL%20Routing/PerfectHandlers.swift" class="external-link" rel="nofollow">Example PerfectHandlers.swift</a></p>


<p>Thanks,<br/>
-Kyle</p></p>


### Wed, 16 Dec 2015 18:34:48 -0500 / brado 

<p><p>FYI &#8211; swifter I believe added method-based routing yesterday. Thanks for the updates, Kyle, this is awesome, I'll take a look. I'm posting another issue about building on Linux which is of interest to me, as I've been Linux building Swifter and (without much success so far) CryptoSwift. Crypto is going to be a showstopper for server code on Linux until a stable library is available, I'm thinking, unless someone has it working already. </p></p>


### Thu, 17 Dec 2015 15:25:17 -0500 / makoni 

<p><p>I'm sorry for offtop but what do you think about using self documented code? Using <a href="https://github.com/onevcat/VVDocumenter-Xcode" class="external-link" rel="nofollow">VVDocumenter</a>? </p></p>


### Thu, 17 Dec 2015 18:22:02 -0500 / brado 

<p><p>I don't always self document my code, but when I do, I use VVDocumenter (seriously &#8211; I use it in Xcode). </p></p>


