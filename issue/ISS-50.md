# [ISS-50] Issue when launching the server on Ubuntu 15-10 : "the file / was not found"

[XML Source](./xml/ISS-50.xml)
<p><p>Hello,</p>

<p>I have a problem when i launch the perfectserverhttp from Ubuntu 15-10.<br/>
<span class="image-wrap" style=""><img src="https://cloud.githubusercontent.com/assets/14749617/11787575/af163b3e-a28c-11e5-8d82-75b59e8efc1d.png" style="border: 0px solid black" /></span></p>

<p>The server launches properly, but then i can't manage to work with it. The message "The file "/" was not found" is displaying on the navigator.</p>

<p>Could it be because i use a virtual machine? Or did i do something wrong with the installation? I followed step by step the instructions written in the Readme files.</p>

<p>Thanks in advance!</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Khalil-Ciret](Khalil-Ciret)|[Unassigned]($-1)





Created|Mon, 14 Dec 2015 12:06:18 -0500
-------|--------------
Updated|Wed, 22 Jun 2016 10:43:33 -0400
Resolved|


## Comments




### Thu, 17 Dec 2015 14:15:55 -0500 / abdul-moiz 

<p><p>I encountered the same issue. <br/>
Resolved it by changing the document root in AppDelegate file.</p>

<p>Original: var documentRoot: String = "./webroot/"<br/>
Replaced: var documentRoot: String = "Project_Path"</p>

<p>And in init() method.<br/>
Original: self.documentRoot = NSUserDefaults.standardUserDefaults().stringForKey(KEY_SERVER_ROOT) ?? "./webroot/"<br/>
Replaced:  self.documentRoot = NSUserDefaults.standardUserDefaults().stringForKey(KEY_SERVER_ROOT) ?? "Project_Path"</p>

<p>Hope this will resolve your problem.</p></p>


### Thu, 24 Dec 2015 13:06:37 -0500 / kjessup 

<p><p>You will need to put an index file in the webroot. With Xcode, it copies the various mustache files into the root as part of the build process, but on Linux this is not automatically done. On Linux there is a bit more manual effort required and we certainly need to document this better. The general heuristic is to copy the .mustache files from the example project into the webroot folder which gets created in whichever working directory you are executing the perfectserver</p>
{http,fcgi}
<p> in.</p></p>


### Fri, 8 Jan 2016 20:47:19 -0500 / mpclarkson 

<p><p>Checkout my <a href="https://github.com/mpclarkson/perfect-swift-linux/" class="external-link" rel="nofollow">vagrantfile</a> - it should make things pretty clear on how to get everything running on ubuntu</p></p>


### Wed, 10 Feb 2016 10:00:12 -0500 / sumantimalsina9 

<p><p>guys i am also having the same problem on my new project. <br/>
I followed this tutorial <span class="error">&#91;http://code-me-dirty.blogspot.co.uk/|url&#93;</span><br/>
and i ended up with the same error which I could not fix it can u guys please help me.</p>

<p>&lt;img width="536" alt="screen shot 2016-02-10 at 8 43 19 pm" src="https://cloud.githubusercontent.com/assets/10903786/12950814/1c05944c-d037-11e5-8830-6811aee1b111.png"&gt;</p>

<p>thanks in advance.</p></p>


### Wed, 10 Feb 2016 11:00:35 -0500 / ludagoo 

<p><p>Add missing file to Project &gt; Build Phases &gt; Copy Files</p>

<p>Destination should be set Product Directories</p>

<p>Subpath to webroot</p>

<p>The list needs to have all the mustache or static files you have.</p></p>


### Wed, 10 Feb 2016 22:39:39 -0500 / sumantimalsina9 

<p><p>can you give me a screenshot so i can figure it out.<br/>
i am totally new to swift.</p></p>


### Sun, 19 Jun 2016 23:46:32 -0400 / dsp1589 

<p><p>any idea on where is webroot folder?</p>

<p>my executables are here ./build/debug/</p></p>


### Mon, 20 Jun 2016 11:10:51 -0400 / rymcol 

<p><p>@dsp1589 see: <a href="https://github.com/PerfectlySoft/PerfectExample-UploadEnumerator" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/PerfectExample-UploadEnumerator</a> - This is a good example of how it should look</p>

<p>I.e. If you executables are at ./.build/debug/ then your webroot should simply be at ./webroot/</p></p>


### Wed, 22 Jun 2016 10:43:33 -0400 / jonog 

<p><p>Hi all - looks like each of the issues have been addressed. Closing for now, please open a new issue for specific problems as they arise!</p></p>


