# [ISS-54] Building on Linux

[XML Source](./xml/ISS-54.xml)
<p><p>I've spent the last two days trying to get a project with several dependencies compiled and running on Linux. The other projects I've been working with use the Swift Package Manager approach, a Package.swift definition file plus /Sources directory, which makes it very easy to link dependencies from their github repo URL. </p>

<p>Perfect on the other hand uses a makefile. It would be really nice to be able to reference PerfectLib in the same manner, but it doesn't appear the project is structured to be Swift Package Manager friendly (unless I'm missing it). </p>

<p>What's the prospects of getting the Perfect project structured to work with Swift Package Manager, and in the meantime, what's your recommended approach for using Perfect as a dependency for projects building on Linux? </p>

<p>Thanks.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Brad O'Hearne](brado)|[Unassigned]($-1)





Created|Wed, 16 Dec 2015 18:42:20 -0500
-------|--------------
Updated|Fri, 5 Feb 2016 23:51:33 -0500
Resolved|


## Comments




### Thu, 17 Dec 2015 04:29:19 -0500 / c0deh4cker 

<p><p>I believe that Perfect is purposefully not using the Swift Package Manager at this point because swiftpm currently only builds static libraries, but Perfect needs the libraries to be built dynamically.</p></p>


### Thu, 17 Dec 2015 09:38:13 -0500 / kjessup 

<p><p>This is true - we rely on dynamic libraries in both PerfectLib and the handler modules it loads. When SPM supports dynamic libraries we will switch to that, assuming it also supports integrating arbitrary C code as we use a bit of that for bridging certain gaps (some helper functions and wrapping variadic C funcs as well). We will definitely support SPM in the handler modules. I'll add the intent for SPM support to the roadmap document and close this issue. Thanks!</p></p>


### Thu, 17 Dec 2015 13:22:56 -0500 / brado 

<p><p>As SPM is really the only Swift.org-documented direction folks presently have for building on Linux, and thus with the handful of Swift Linux-ready projects on Github I've encountered, they are using SPM &#8211; and that makes it really easy to build on Linux. I think what we need is some kind of doc on how to build a project on linux that is using SPM <em>and</em> linking against PerfectLib. I think that's the common Linux build scenario that's going to be encountered by anyone wanting to use PerfectLib. </p></p>


### Fri, 5 Feb 2016 23:51:33 -0500 / crizzwald 

<p><p>Has there been any movement with SPM? I am looking to try and deploy the URL Routing example to Heroku and am trying to figure out just how to do that... Thoughts anyone?</p></p>


