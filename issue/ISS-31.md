# [ISS-31] Deploy on AWS?

[XML Source](./xml/ISS-31.xml)
<p><p>I'm assuming this can't be deployed to a real production server yet, since it can't run on linux.<br/>
Is that something that is only reconcilable after Apple open sources the language?</p>

<p>Nevertheless, not being able to scale the servers made is definitely an issue.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Andrew Breckenridge](AndrewSB)|[Unassigned]($-1)





Created|Sat, 28 Nov 2015 15:53:35 -0500
-------|--------------
Updated|Wed, 8 Jun 2016 01:59:17 -0400
Resolved|


## Comments




### Sat, 28 Nov 2015 16:00:14 -0500 / marinehero 

<p><p>Your assumption is correct. If you look at the code you will see that it has Xcode projects. </p>

<p>My assumption is that this project is for those who want to prepare in advance and will change the minute Apple makes Swift available on Linux.</p>

<p>Guess you can expect a lot of changes down the line.</p></p>


### Sat, 28 Nov 2015 16:45:00 -0500 / andrewsb 

<p><p>looking forward to when Apple makes that shift</p></p>


### Wed, 2 Dec 2015 16:33:37 -0500 / kjessup 

<p><p>Yes, we will be making changes to accommodate Linux as soon as Apple open sources. After we get things running and tested Linux you would be able to deploy on AWS. We plan on doing pre-configured AWS server images, though you will certainly be able to do the installs yourself.</p></p>


### Wed, 2 Dec 2015 16:59:04 -0500 / andrewsb 

<p><p>��</p></p>


### Wed, 2 Dec 2015 21:13:50 -0500 / daidoujichen 

<p><p>:+1: </p></p>


### Tue, 22 Mar 2016 23:00:40 -0400 / andrelrs 

<p><p>Hi guys, supported aws now?</p>

<p>cc <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=AndrewSB" class="user-hover" rel="AndrewSB">Andrew Breckenridge</a> @kjessup</p></p>


### Wed, 23 Mar 2016 08:42:36 -0400 / bleugamer 

<p><p>I've run a test server on aws just fine. It's a little tricky, easiest on a custom ec2 with a startup service. Can be done on beanstalk with docker.</p></p>


### Mon, 6 Jun 2016 01:08:45 -0400 / dsp1589 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=BleuGamer" class="user-hover" rel="BleuGamer">Lance</a> How did you deploy the project in AWS. Any links/docs? <br/>
I just created an perfect-ubuntu AMI in aws. Not sure how to push the code. I see perfectserver and perfectlib are there in /usr/src/perfect. Any help much appreciated.</p></p>


### Tue, 7 Jun 2016 18:18:19 -0400 / deepukjayan 

<p><p>@dsp1589 exactly at your stage now. You made any progress on that.</p></p>


### Wed, 8 Jun 2016 01:59:16 -0400 / robertbojor 

<p><p>If it's a single EC2 instance you could deploy the code using git and a<br/>
post-receive hook to do all the work once the code is up.</p>

<p>If you went with an EBS, deploy everything through Docker, works Perfectly<br/>
��</p>

<p>On Wednesday, 8 June 2016, Deepak K &lt;notifications@github.com&gt; wrote:</p>

<p>&gt; @dsp1589 &lt;<a href="https://github.com/dsp1589" class="external-link" rel="nofollow">https://github.com/dsp1589</a>&gt; exactly at your stage now. You made<br/>
&gt; any progress on that.<br/>
&gt;<br/>
&gt; —<br/>
&gt; You are receiving this because you are subscribed to this thread.<br/>
&gt; Reply to this email directly, view it on GitHub<br/>
&gt; &lt;<a href="https://github.com/PerfectlySoft/Perfect/issues/17#issuecomment-224431934" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect/issues/17#issuecomment-224431934</a>&gt;,<br/>
&gt; or mute the thread<br/>
&gt; &lt;<a href="https://github.com/notifications/unsubscribe/ACZaBppiD3l8QelydlGhE8uytClZDMe5ks5qJe41gaJpZM4Gq4uM" class="external-link" rel="nofollow">https://github.com/notifications/unsubscribe/ACZaBppiD3l8QelydlGhE8uytClZDMe5ks5qJe41gaJpZM4Gq4uM</a>&gt;<br/>
&gt; .<br/>
&gt;</p>


<p>&#8211; <br/>
Kind regards,<br/>
Robert Bojor<br/>
Mobile &amp; Web Developer<br/>
<a href="http://www.robertbojor.com/" class="external-link" rel="nofollow">http://www.robertbojor.com/</a></p></p>


