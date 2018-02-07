# [ISS-40] License Rationale and Clarification

[XML Source](../xml/ISS-40.xml)
<p><p>I see this great project is under the Gnu Affero License, which basically implies that any software built using this server will need to be under the same license (see <a href="https://www.gnu.org/licenses/gpl-faq.html#LinkingOverControlledInterface" class="external-link" rel="nofollow">https://www.gnu.org/licenses/gpl-faq.html#LinkingOverControlledInterface</a>). </p>

<p>Swift.org has been released under the Apache License. Any chance this project would consider doing the same ?</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Serge Huber](sergehuber)|[Unassigned]($-1)





Created|Fri, 4 Dec 2015 04:28:49 -0500
-------|--------------
Updated|Wed, 30 Mar 2016 07:46:37 -0400
Resolved|


## Comments




### Fri, 4 Dec 2015 10:27:18 -0500 / ludagoo 

<p><p>I think it would be great. </p></p>


### Fri, 4 Dec 2015 12:17:45 -0500 / seanstephens 

<p><p>Our situation is somewhat different from Swift's. Swift.org happens to have a benefactor with very deep pockets - Apple - who are able to generate the odd dollar from various streams of related products. We are a team put together exclusively for the purposes of driving Swift on the Server-side with no Mothership Benefactor (yet).</p>

<p>It is not our intent to let this become Yet Another Dead GitHub Project. We will be driving this project with our blood, sweat and tears - for many years to come. We are currently building a long-term infrastructure to support and drive this project, and want to maximize its potential genius in every way possible, with whatever means we have access to.</p>

<p>We believe Swift/Perfect has a glorious future.</p>

<p>From our site: "Our goal in selecting the AGPL v3.0 as our open source license is to require that enhancements to Perfect be released to the community. Traditional GPL often does not achieve this anymore as a huge amount of software runs in the cloud - and we want to make sure Perfect has a chance to exponentially grow. We also want to make sure we have revenue to continue improving the product - so we request donations and additionally offer enterprise licences." - <a href="http://perfect.org/licensing.html" class="external-link" rel="nofollow">http://perfect.org/licensing.html</a></p>

<p>AGPL isn't as forgiving as the Apache licence - but it's strategically correct at this time given our aspirations. Please consider sharing your genius back with us! </p>

<p>*And if you need an alternate licence at this time, please contact us. We will happily consider alternative licenses on a case by case basis. The glory of Open Source!</p>

<p>Hopefully that helps!</p></p>


### Fri, 4 Dec 2015 13:40:08 -0500 / danappelxx 

<p><p>So does this mean that you can't build an application with Perfect and have it be closed-source? This could act as a huge turn-off to a lot of people.</p></p>


### Fri, 4 Dec 2015 14:32:51 -0500 / ludagoo 

<p><p>Yes you can, just pay up. Totally legitimate IMO. </p></p>


### Fri, 4 Dec 2015 14:53:35 -0500 / stestagg 

<p><p>Thanks for this @SeanStephens, it's a very pragmatic approach. I hope you make perfect an amazing server</p></p>


### Fri, 4 Dec 2015 15:19:02 -0500 / seanstephens 

<p><p>It is definitely our hope that people build applications for Perfect and make them closed-source. Our plan is to strategize on appropriate licensing arrangements (once the Linux version goes live) which are accessible and effectively promote the use of Perfect everywhere and anywhere possible. This arrangement will be how we fund constant ongoing improvement of the product and surrounding ecosystem.</p>

<p>If you need something more immediately, please drop us a line at info@perfect.org. We are busy, but would love to engage in a discussion around lisencing at any time that might meet a developers needs.</p></p>


### Sat, 5 Dec 2015 04:42:07 -0500 / sergehuber 

<p><p>Seems reasonable to me but I believe that there will probably be other open source offerings that may have more liberal licenses that you will then have to compete against. By choosing a more liberal license you could have undercut that market and possibly find another way of monetizing your effort (with advanced editions for example) while driving adoption very quickly </p></p>


### Sat, 5 Dec 2015 09:19:39 -0500 / abl 

<p><p>Sorry, it may just be me, but I'm still not quite sure what the intentions are here.</p>

<p>The AGPLv3 is clear; anything linked must be released under the terms of the AGPLv3. There's no way to use Perfect without linking it; therefore, all apps using Perfect must comply with the AGPLv3.</p>

<p>If the intent is for all Perfect apps to be AGPLv3 or paid, ok, got it.</p>

<p>If not, I'd suggest a statement like <a href="http://www.scylladb.com/opensource/" class="external-link" rel="nofollow">http://www.scylladb.com/opensource/</a> that makes it clear which rights you're trying to reserve - ScyllaDB doesn't care about the applications built on top of it but enforces release of any modifications to the DB engine, etc.</p></p>


### Sat, 5 Dec 2015 15:40:33 -0500 / seanstephens 

<p><p>We spent considerable time considering the effects of licensing in balance with our aspirations. Thank you for your feedback, it is genuinely very helpful - we will certainly need to explain our rationale further. Let me throw in an off-the-cuff response - something more formal will follow.</p>

<p>Other open source products are bound to appear (and should! Competition is healthy...), and quite likely with more liberal lisences. The manifestation of such products with highly permissive licensing usually ensures they attract early support from helper developers which helps them get off the ground.</p>

<p>Although Perfect was only released a few weeks ago, it is not a "new" project. It is, in fact, based on the genius of a product which was once part of the Apple product line (Lasso - <a href="https://en.wikipedia.org/wiki/Lasso_(programming_language" class="external-link" rel="nofollow">https://en.wikipedia.org/wiki/Lasso_(programming_language</a>)), and represents approximately 20 years of server-side language development knowledge and codebase, and six additional months of hard Swift work by a team roughly the same size as Swift's. It is our hope that the raw excellence of this project quickly sets it aside as the most robust of the eventually-competitive marketplace of products for Server-Side Swift development (and perhaps server-side development in general). We would like people to choose Perfect primarily for its excellence, not a bewitchingly permissive licensing model. (And as the fastest-growing-in-popularity Swift GitHub project in history in two weeks, we may just achieve this aspiration quicker than we had even hoped).</p>

<p>AGPLv3 has very few limitations. If anything, it ensures that Perfect, as a relatively mature product, won't collect dust on a shelf, by requiring that people who tweak it and use it in large-scale production either help fund improvements or give back their improvements to the community. Few projects are likely to need to tweak Perfect - they will be busy working on their own application and Perfect will just be there for them, looking after them.</p>

<p>There are many current superb examples of this same metaphor which have adopted the same model: including (as <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=abl" class="user-hover" rel="abl">Alexander</a> noted) ScyllaDB, MongoDB, Bacula, SugarCRM, etc. Although the linking terms of the AGPLv3 can be read very aggressively, that is not our intent - we do not ever intend to cripple anyone else's work, or attack people for "linking to Perfect". When read with complete paranoia, merely linking an AGPLv3 product to the Internet might be a threat. However, that is certainly not our intent - our attitude is very similar to that of ScyllaDB's - just don't use our communal craftsmanship selfishly. That is all.</p>

<p>It is also certainly not our intent to prevent aspirational developers, start-ups or others from using Perfect. On the contrary, we merely want to make sure that the total net effort of the work has a chance to grow in the sun while not being scavenged by large companies for their own profit (a common occurrence). We intend to offer additional lisences in order to support different needs (one of the goals of the initial licence being AGPLv3 - the opportunity for dual-lisencing). From each according to his ability to pay, to each according to his needs. We are open-minded, and will be likewise transparent.</p>

<p>However, as long as lawyers exist to re-interpret licences (and thus sue others and each other), there is always a risk in lack of formal clarity. We don't want reasonable paranoia to prevent anyone from using Perfect. So we'll definitely add more clarification around this subject - here and on our site. Great suggestion, thank you.</p>

<p>The Scylladb example is the best I've seen to date. I'll re-open this issue until we can articulate our intent better and more formally in our licensing terms. Thanks for the feedback from you all, it is very helpful.</p>

</p>


### Sat, 5 Dec 2015 15:56:17 -0500 / seanstephens 

<p><p>*There should also be more clarification around "building an application with Perfect and having it be closed source". 99% of Perfect usage will be - install it on a server, build a website in Swift (compiled) or mobile app in Swift (compiled) which connects to a server upon which Perfect has been installed, and let it do its thing. There is no licensing requirement here, as Perfect has not been touched. It's free to use as the back end. The code for these projects communicates and relies on Perfect, but does not include or change Perfect, per se. Ergo, the project is not affected in the slightest by the licence requirements, and can be closed-source to its heart's content. (All iOS apps are closed-source, theoretically, as they are compiled).</p>

<p>However, should a major cloud provider improve the speed of Perfect for their own purposes by doing X, they will be required to either a) pay for a licence or b) show the world how they improved it accordingly. Or, if they wish to bundle it with their product, or leverage a component of Perfect for an alternate project, they would need to refer to the licensing limitations.</p>

<p>If we find that this is not how developers use the product, we will rethink the licensing terms accordingly. But as most server-side languages are used precisely on this way (think Perl, Python, RoR, Lasso, PHP, etc.), we believe this is how the AGPLv3 will be rationally applied in this instance.</p></p>


### Sun, 6 Dec 2015 20:16:22 -0500 / cwoloszynski 

<p><p>I would be happy to see you use some licensing terms that are explicit about the applications that are written on top of Perfect and state that they are NOT included in the GPL clauses.  I think that this was done with LGPL 2.0.  I did a quick read of AGPL v3 and I don't see the language that says that apps running on top of Perfect are not subject to GPL. </p>

<p>This will stop me (and all of my colleagues from using Perfect for anything more than experimentation until this topic is better addressed in your licensing terms.  </p>

<p>Please add some clause (or some discussion that points out the existing clauses) that say our proprietary apps on top of Perfect are not subject to AGPLv3!</p>

<p>Thanks,</p>

<p>Charlie</p></p>


### Sun, 6 Dec 2015 20:47:59 -0500 / seanstephens 

<p><p>In Section 13 of the AGPLv3, the statement is made;</p>

<p>"...<b>if you modify the Program</b>, your modified version must prominently offer all users<br/>
interacting with it remotely through a computer network..."</p>

<p>As interacting with Perfect is unlikely to require modification (it's a stand-alone server and set of libraries), this should effectively and clearly distinguish it from any applications "built on top" of it. Configuration aside, it otherwise remains highly neutral to the applications which might use it. When was the last time you changed Java in order to use Java?</p>

<p>Let me know if this satisfies your request, and thank you for applying pressure to the clarification process. We'd like to see people adopt Perfect, and don't want our aspirations for the product to be clouded by administrative confusion.</p></p>


### Sun, 6 Dec 2015 20:54:47 -0500 / cwoloszynski 

<p><p>Thank you for getting back to me in such a timely manner.  </p>

<p>Perhaps it is an education thing.  I believe that you are saying that code that implements the required APIs and are included in PerfectLibrary are NOT covered by AGPLv3.  That sounds about right.  I want to suggest an intro diagram in the licensing section of Perfect that shows the distinction.</p>

<p>I am still reading up on the design of Perfect and the notion that you load the ‘application’ as a shared library helps demonstrate the isolation and how the license applies.  If I understand the design, a picture would be worth a thousand words to quell this concern and get every one back on track to enjoy the enormous effort you have put into creating and sharing Perfect with all of us.</p>




<p>&gt; On Dec 6, 2015, at 8:48 PM, Sean Stephens &lt;notifications@github.com&gt; wrote:<br/>
&gt; <br/>
&gt; In Section 13 of the AGPLv3, the statement is made;<br/>
&gt; <br/>
&gt; "...if you modify the Program, your modified version must prominently offer all users<br/>
&gt; interacting with it remotely through a computer network..."<br/>
&gt; <br/>
&gt; As interacting with Perfect is unlikely to require modification (it's a stand-alone server and set of libraries), this should effectively and clearly distinguish it from any applications "built on top" of it. Configuration aside, it otherwise remains highly neutral to the applications which might use it. When was the last time you changed Java in order to use Java?<br/>
&gt; <br/>
&gt; Let me know if this satisfies your request, and thank you for applying pressure to the clarification process. We'd like to see people adopt Perfect, and don't want our aspirations for the product to be clouded by administrative confusion.<br/>
&gt; <br/>
&gt; —<br/>
&gt; Reply to this email directly or view it on GitHub &lt;<a href="https://github.com/PerfectlySoft/Perfect/issues/26#issuecomment-162387224" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect/issues/26#issuecomment-162387224</a>&gt;.<br/>
&gt; </p>
</p>


### Sun, 6 Dec 2015 21:01:55 -0500 / seanstephens 

<p><p>Great feedback, thank you. A diagram would certainly be a great addition to help clarify our intent. Perhaps we can add more meaningful and useful detail to the marketing diagram as shown on <a href="http://perfect.org/about.html" class="external-link" rel="nofollow">http://perfect.org/about.html</a>.</p>

<p>Please, keep the suggestions coming. This is very helpful.</p></p>


### Sun, 6 Dec 2015 21:08:29 -0500 / cwoloszynski 

<p><p>I think that is a great idea. </p>

<p>Sent from my iPhone</p>

<p>&gt; On Dec 6, 2015, at 9:02 PM, Sean Stephens &lt;notifications@github.com&gt; wrote:<br/>
&gt; <br/>
&gt; Great feedback, thank you. A diagram would certainly be a great addition to help clarify our intent. Perhaps we can add more meaningful and useful detail to the marketing diagram as shown on <a href="http://perfect.org/about.html" class="external-link" rel="nofollow">http://perfect.org/about.html</a>.<br/>
&gt; <br/>
&gt; Please, keep the suggestions coming. This is very helpful.<br/>
&gt; <br/>
&gt; —<br/>
&gt; Reply to this email directly or view it on GitHub.<br/>
&gt; </p></p>


### Mon, 7 Dec 2015 14:58:53 -0500 / cwoloszynski 

<p><p>One more note:  you propose that the PerfectLibrary be used on both the client and server side.  That puts the linkage of the library into the app on iOS.  Does the AGPL license have a clause that allows that without making the resulting application also AGPLv3?</p>

<p>I'd love to use the same PerfectLibrary on both sides, but not if it requires me to open-source my application.  I fully appreciate the idea of making developers contribute their changes back to the community.    Just want to make sure that the proprietary code above that library remains free of GPL licensing.</p>

<p>Would it be reasonable to put the PerfectLibrary under LGPLv2 which I think does what is needed there or does AGPL address this issue?  </p></p>


### Tue, 15 Dec 2015 21:26:57 -0500 / uchuugaka 

<p><p>Sadly I cannot use this. Need something under MIT or BSD style licensing. While you mention Swift.org has deep pockets, it sounds like you're hoping to make money on their work, so why do it this way?</p></p>


### Mon, 28 Dec 2015 05:38:47 -0500 / akrabat 

<p><p>&gt; Although the linking terms of the AGPLv3 can be read very aggressively, that is not our intent - we do not ever intend to cripple anyone else's work, or attack people for "linking to Perfect".</p>

<p>This needs to be formally incorporated into the Perfect license before someone small like myself could use this project in a closed source application. </p>

<p>To my reading, <a href="https://github.com/PerfectlySoft/Perfect/blob/master/LICENSE#L210-L216" class="external-link" rel="nofollow">Section 5 (c)</a> is clear that an application that links to Perfect  must also be licensed as AGPL. (That is, my app is clearly  <a href="https://github.com/PerfectlySoft/Perfect/blob/master/LICENSE#L198" class="external-link" rel="nofollow">"a work based on the Program"</a> because it wouldn't work without Perfect.) The fact that you have commented on this issue stating that this is not your intent doesn't change the text of the <a href="https://github.com/PerfectlySoft/Perfect/blob/master/LICENSE" class="external-link" rel="nofollow">license</a> supplied with the source code, that I am bound to.</p>

<p><a href="https://github.com/PerfectlySoft/Perfect/blob/master/LICENSE#L331-L334" class="external-link" rel="nofollow">Section 7</a> of the license allows for providing additional terms to the license for exceptions. The GPL FAQ provides text that could be used for an exception to allowing linking in <a href="https://www.gnu.org/licenses/gpl-faq.html#LinkingOverControlledInterface" class="external-link" rel="nofollow">How can I allow linking of proprietary modules with my GPL-covered library under a controlled interface only?</a>. Personally, I would like to see the Perfect <a href="https://github.com/PerfectlySoft/Perfect/blob/master/LICENSE" class="external-link" rel="nofollow">LICENSE</a> file updated to include this explicit exception if that is your intent. This would make it clear that it was allowed to build closed source apps that use Perfect without modifying Perfect's source code.</p>

<p>For what it's worth, both ScyllaDB &amp; MongoDB's drivers (the bit I have to link to) are Apache licensed (<a href="http://www.scylladb.com/opensource/driver-license/" class="external-link" rel="nofollow">ScyllaDB</a>, <a href="https://github.com/mongodb/mongo-c-driver/blob/master/COPYING" class="external-link" rel="nofollow">MongoDb C driver</a>). Hence in their cases, I'm linking to Apache licensed code, not AGPL code, so this issue doesn't arise for those products.</p></p>


### Mon, 28 Dec 2015 11:01:00 -0500 / cwoloszynski 

<p><p>I think your comment about an explicit exception would codify the comments made in this issue (and should align with the diagram changes I also suggested).    With that in place, I think we could all engage in advancing the state of Perfect to compete with likes of Node.js, etc.</p></p>


### Sat, 16 Jan 2016 21:11:28 -0500 / uchuugaka 

<p><p>I have to stick with <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=akrabat" class="user-hover" rel="akrabat">Rob Allen</a>  here, there's a reason companies, including the one I work at will almost always disallow GPL, LGPL and AGPL among others. My company has a world-class legal dept and they pretty much disallow anything they didn't pay for. They also provide the clear rationale, that no matter what somebody says, the license is still there unless it's dual licensed and the optional license is ok.  I'd love to use this, but I cannot.</p></p>


### Mon, 18 Jan 2016 04:56:37 -0500 / stestagg 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=uchuugaka" class="user-hover" rel="uchuugaka">John Joyce</a> - The perfect website makes it clear that commercial licenses may be negotiated:</p>

<p>"Commercial licenses are available through PerfectlySoft Inc. (Contact info@perfect.org)"</p></p>


### Fri, 11 Mar 2016 19:46:06 -0500 / seanstephens 

<p><p>Thanks for all of this feedback, it was one of the core discussions which led to our changing the license to Apache. Your involvement is much appreciated.</p>

<p><a href="https://github.com/PerfectlySoft/Perfect/issues/131" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect/issues/131</a></p></p>


### Wed, 30 Mar 2016 07:46:37 -0400 / sergehuber 

<p><p>Hi Sean, </p>

<p>I just noticed that you changed the license to Apache 2, thank you so much for changing your mind, I think this is a great way to make your project more noticeable and business friendly. Glad I could be of some help <img class="emoticon" src="http://jira.perfect.org:8080/images/icons/emoticons/smile.png" height="16" width="16" align="absmiddle" alt="" border="0"/> </p>

<p>cheers,<br/>
  Serge... </p></p>


