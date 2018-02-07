# [ISS-32] Dependency manager integration

[XML Source](./xml/ISS-32.xml)
<p><p>Hi, <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=kjessup" class="user-hover" rel="kjessup">Kyle Jessup</a> first of all let me say that I very like and enjoy of your project!</p>

<p>But is there going to be some CocoaPods or Carthage integrations?</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[sergdort](sergdort)|[Unassigned]($-1)





Created|Sun, 29 Nov 2015 11:07:16 -0500
-------|--------------
Updated|Tue, 21 Jun 2016 16:39:52 -0400
Resolved|


## Comments




### Sun, 6 Dec 2015 20:31:42 -0500 / cwoloszynski 

<p><p>Can I suggest using the package manager that Apple included in Swift's open source release?</p></p>


### Tue, 29 Dec 2015 16:58:52 -0500 / kradalby 

<p><p>+1 for <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=cwoloszynski" class="user-hover" rel="cwoloszynski">cwoloszynski</a> suggestion.</p></p>


### Tue, 29 Dec 2015 21:43:51 -0500 / daidoujichen 

<p><p>agree <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=cwoloszynski" class="user-hover" rel="cwoloszynski">cwoloszynski</a> </p></p>


### Thu, 11 Feb 2016 23:56:19 -0500 / jhoughjr 

<p><p>+1 for CocoaPods and swift package manager here.</p></p>


### Tue, 15 Mar 2016 16:11:20 -0400 / seanstephens 

<p><p>Definitely, we plan on supporting CocoaPods and Carthage - and eventually SPM. Also on the table - Homebrew and Apt.</p></p>


### Tue, 10 May 2016 08:43:41 -0400 / tofplay 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=SeanStephens" class="user-hover" rel="seanstephens">Sean Stephens</a> any news about Carthage support?</p></p>


### Tue, 10 May 2016 10:57:49 -0400 / seanstephens 

<p><p>We did an online vote, and SPM won - so we have been focused there. We have been heavily focused on re-modularizing, and wanted to make sure these core changes (amongst others) were in place ASAP.</p>

<p>Let me circle back to the team and let you know where it falls on our road map - give me a week or so to get back to you.</p></p>


### Tue, 10 May 2016 13:46:07 -0400 / gjnilsen 

<p><p>1. SPM is/will be cross platform.<br/>
2. Carthage + CocoaPods got Sherlocked.</p>

<p>Swift will be around, its supported by a big company investing billions into the language and the ecosystem around it is getting better and stronger every day.<br/>
Going for SPM is the best decision IMO. </p></p>


### Tue, 10 May 2016 14:09:09 -0400 / tofplay 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=GJNilsen" class="user-hover" rel="GJNilsen">GJ Nilsen</a> I agree soon or later SPM will replace Carthage and CocoaPods. But obviously not before end of 2016 (I think probably not before the first quarter 2017). Currently SPM is still developing and will be available only with Swift 3. What will we do during those 7 months? Until SPM is officially released Carthage remains the best solution currently available.</p></p>


### Tue, 10 May 2016 14:22:44 -0400 / gjnilsen 

<p><p><a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=TofPlay" class="user-hover" rel="TofPlay">Christophe Braud</a> first, Swift 3 will almost certainly be released together with iOS 10, this fall, so some months without a dependency manager is correct. But isn't there enough task already to use manpower on with this project? Does someone really want to implement something that will be outdated in some months?<br/>
Second, I strongly believe code that depends on other code to be downloaded just to be able to build a project, has nothing to do in the project to begin with. Its so easy to forget what happened in March, when a big bag of hurt was opened and the a lot of NodeJS apps felt the wrath of the falling house of card thats called <a href="http://www.theregister.co.uk/2016/03/23/npm_left_pad_chaos" class="external-link" rel="nofollow">npm</a>.<br/>
Thats why I feel the only dependency manager is the one that has a solid backing. The sherlocked ones do have some backing, but a lot of that will probably vanish as soon as SPM is released.</p></p>


### Tue, 21 Jun 2016 16:39:45 -0400 / jonog 

<p><p>I'm closing out the thread based on the integration with SPM - this is already available for the most recent builds of Swift 3, and the master branch projects and modules for the upcoming release of Perfect.<br/>
For further discussion, please join us on the Perfect Gitter channel <br/>
[!<a href="https://badges.gitter.im/PerfectlySoft/Perfect.svg" class="external-link" rel="nofollow">Gitter</a>](<a href="https://gitter.im/PerfectlySoft/Perfect?utm_source=badge&amp;utm_medium=badge&amp;utm_campaign=pr-badge" class="external-link" rel="nofollow">https://gitter.im/PerfectlySoft/Perfect?utm_source=badge&amp;utm_medium=badge&amp;utm_campaign=pr-badge</a>)</p></p>


