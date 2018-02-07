# [ISS-61] Library not loaded: @rpath/libswiftAppKit.dylib

[XML Source](../xml/ISS-61.xml)
<p><p>Setup:<br/>
Using the Xcode template I created a new Perfect Server Project, modified the scheme to include the executable PerfectServer HTTP.app, added PerfectLib.Framework to the linked libraries and binaries. The project runs and PerfectServerModuleInit() executes in the project.</p>

<p>Problem:<br/>
I was never able to get a request to the mustache template in my project, I was still able to send requests to TapTracker, Authenticator, and UploadEnumerator (login, request, TapTracker...). I went to the webroot directory and saw login, request, TapTracker... but not my mustache template. Looking deeper I ran the executable PerfectServer HTTP and the following message comes out after multitude of other messages come out</p>

<p>Output:<br/>
objc<span class="error">&#91;4290&#93;</span>: Class _TtCSs18_EmptyArrayStorage is implemented in both /Users/Cam/Library/Developer/Xcode/DerivedData/Examples-aqjpcyrjmijblwavckfeldxenqlq/Build/Products/Debug/PerfectLib.framework/Versions/A/Frameworks/libswiftCore.dylib and /Users/Cam/Library/Developer/Xcode/DerivedData/Examples-aqjpcyrjmijblwavckfeldxenqlq/Build/Products/Debug/perfectserverhttp. One of the two will be used. Which one is undefined.</p>

<p>Errno dlopen(./PerfectLibraries/MyTestPerfectServer.framework/Versions/Current/MyTestPerfectServer, 6): Library not loaded: @rpath/libswiftAppKit.dylib<br/>
  Referenced from: /Users/Cam/Library/Developer/Xcode/DerivedData/Examples-aqjpcyrjmijblwavckfeldxenqlq/Build/Products/Debug/MyTestPerfectServer.framework/Versions/Current/MyTestPerfectServer<br/>
  Reason: image not found<br/>
FAILED to load MyTestPerfectServer.framework/</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Cameron Deardorff](camdeardorff)|[Unassigned]($-1)





Created|Wed, 23 Dec 2015 12:50:59 -0500
-------|--------------
Updated|Sat, 23 Apr 2016 15:44:17 -0400
Resolved|


## Comments




### Tue, 5 Jan 2016 23:10:57 -0500 / camdeardorff 

<p><p>I found a fix for the 'Library not loaded: @rpath/libswiftAppKit.dylib' issue, It is certainly not ideal but it was the only thing that worked after hours of searching. <br/>
I first had to add libswiftAppKit.dylib to the linked frameworks and libraries found somewhere along the lines of yourHHD/Applications/Xcode.App/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/libswiftAppKit.dylib<br/>
Then change the build settings "Embedded Content Contains Swift Code" to Yes<br/>
Finally import AppKit following the PerfectLib import.</p>

<p>This seems to silence the error but Im still not seeing my mustache file loaded up into the webroot after I fire everything up. This may be an issue with the Xcode template configuration or maybe I'm missing something.</p></p>


### Sat, 23 Apr 2016 15:44:17 -0400 / chrisinissaquah 

<p><p>I had the same error regarding 'Library not loaded: @rpath/libswiftAppKit.dylib' and found that just changing the build setting "Embedded Content Contains Swift Code" to Yes fixed the problem.</p></p>


