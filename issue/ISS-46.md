# [ISS-46] PerfectLib compiled, but PerfectServer failed

[XML Source](./xml/ISS-46.xml)
<p><p>Running on Ubuntu 14.04</p>

<p>As per the subject, PerfectLib compiled without error, but I get errors when trying to compile the Server.  Error is as follows:</p>

<p>clang++ -L/usr/local/swift-2.2/usr/lib/swift/linux -lFoundation -lswiftCore -lswiftGlibc /usr/local/lib/PerfectLib.so -Xlinker -rpath -Xlinker /usr/local/swift-2.2/usr/lib/swift/linux perfectserverfcgi.o -o perfectserverfcgi<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `u_isalnum_55'<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `udat_format_55'<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `udat_close_55'<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `u_isWhitespace_55'<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `udat_open_55'<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `u_errorName_55'<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `ucal_getNow_55'<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `udat_parse_55'<br/>
/usr/local/lib/PerfectLib.so: undefined reference to `u_isdigit_55'<br/>
clang: error: linker command failed with exit code 1 (use -v to see invocation)<br/>
make: <em>*</em> <span class="error">&#91;perfectserverfcgi&#93;</span> Error 1</p>

<p>Thanks</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Mark Windrim](justmark)|[Unassigned]($-1)





Created|Thu, 10 Dec 2015 15:14:47 -0500
-------|--------------
Updated|Mon, 14 Dec 2015 09:24:21 -0500
Resolved|


## Comments




### Thu, 10 Dec 2015 15:46:25 -0500 / kjessup 

<p><p>Try the following and let me know what you see:<br/>
sudo updatedb<br/>
locate libicui18n.so</p>

<p>And give this a try:<br/>
sudo apt-get install libicu-dev</p>

<p>So far we have only built on 15.10. I'll start a 14.04 install now.</p></p>


### Thu, 10 Dec 2015 16:07:50 -0500 / justmark 

<p><p>Thanks for the prompt reply!</p>

<p>libicu-dev was already installed.  Output of locate:</p>

<p>$ locate libicui18n.so<br/>
/usr/lib/x86_64-linux-gnu/libicui18n.so<br/>
/usr/lib/x86_64-linux-gnu/libicui18n.so.52<br/>
/usr/lib/x86_64-linux-gnu/libicui18n.so.52.1</p>
</p>


### Thu, 10 Dec 2015 16:24:00 -0500 / kjessup 

<p><p>Ok, I see. Unfortunately, ICU appends the version number onto each function name. The ICU which gets installed on 15.10 is 5.5, thus the _55 at the end of the undefined functions.</p>

<p>I'll have to consider how to better handle this without forcing people to have to build ICU themselves as a dependency.</p></p>


### Thu, 10 Dec 2015 16:26:16 -0500 / justmark 

<p><p>No worries, I can spin up a 15.10 instance.  Its all good - thanks for jumping on this so quickly.</p></p>


### Fri, 11 Dec 2015 18:42:33 -0500 / c0deh4cker 

<p><p>I looked into this issue as I'm also hitting it on 14.04. It seems that Ubuntu is one of the only platforms where the libicu package is built with symbol renaming enabled, and the maintainer's reasoning behind this decision is discussed here: <a href="http://sourceforge.net/p/icu/mailman/icu-design/thread/20080618182302.2012566511.qww314159@motoko.argon.local/" class="external-link" rel="nofollow">http://sourceforge.net/p/icu/mailman/icu-design/thread/20080618182302.2012566511.qww314159@motoko.argon.local/</a></p>

<p>I believe that the best solution for this issue is to include libicu sources and build a libicu.a as part of the build process for PerfectLib (and is linked into PerfectLib.so). I agree that it would be nice to avoid this. However, it seems that would cause more hassle than it's worth. Plus, relying on the system's libicu will likely cause instability seeing as the developers are so uncertain of the ABI compatibility that they added this crazy per-version symbol renaming "feature".</p></p>


### Sat, 12 Dec 2015 02:00:29 -0500 / c0deh4cker 

<p><p>Continued looking into the issue, and here's what I found. The renaming in libicu comes from <a href="https://github.com/PerfectlySoft/Perfect/blob/12b0729c4e7f679d03c42565178c35bd5f2bd529/PerfectLib/linked/ICU/unicode/urename.h" class="external-link" rel="nofollow">urename.h</a>. Every symbol is <tt>#define}}ed to include the version suffix, for example it <a href="https://github.com/PerfectlySoft/Perfect/blob/12b0729c4e7f679d03c42565178c35bd5f2bd529/PerfectLib/linked/ICU/unicode/urename.h#L817" class="external-link" rel="nofollow">defines <tt>udat_open</tt> to be <tt>udat_open_55</tt></a> for libicu with major version 55. Therefore, C code using libicu is not subject to these naming issues, as you can and should just use the raw defines without the version suffix in C. This only works if we use the system's ICU headers, however, as they will have the macros providing the correct version suffix. This leads me to believe that the best approach is to provide a C function wrapper for any renamed libicu methods that should be used from Swift code (for example, {{udat_open_wrapper</tt>), and to rely on the system's libicu headers.</p>

<p>I did a bit of searching, and there aren't too many references to these renamed symbols in PerfectLib. Here's a summary of the references I found to renamed symbols in libicu from Swift code:</p>

<ul>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/SessionManager.swift" class="external-link" rel="nofollow">SessionManager.swift</a></li>
	<li>Imported function <a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/SessionManager.swift#L28" class="external-link" rel="nofollow"><tt>ICU.ucal_getNow_55</tt></a>, but never used (looks like the code was later changed to instead use <a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/SessionManager.swift#L225" class="external-link" rel="nofollow"><tt>ICU.getNow()</tt></a>)</li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift" class="external-link" rel="nofollow">ICU.swift</a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L34" class="external-link" rel="nofollow"><tt>u_isWhitespace_55</tt></a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L38" class="external-link" rel="nofollow"><tt>u_isdigit_55</tt></a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L42" class="external-link" rel="nofollow"><tt>u_isalnum_55</tt></a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L59" class="external-link" rel="nofollow"><tt>ucal_getNow_55</tt></a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L76" class="external-link" rel="nofollow"><tt>u_errorName_55</tt></a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L109" class="external-link" rel="nofollow"><tt>udat_open_55</tt></a> <a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L153" class="external-link" rel="nofollow">another</a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L115" class="external-link" rel="nofollow"><tt>udat_close_55</tt></a> <a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L159" class="external-link" rel="nofollow">another</a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L118" class="external-link" rel="nofollow"><tt>udat_parse_55</tt></a></li>
	<li><a href="https://github.com/PerfectlySoft/Perfect/blob/e319ecfde078c2a08417eb1887d679a1d13827d3/PerfectLib/ICU.swift#L163" class="external-link" rel="nofollow"><tt>udat_format_55</tt></a></li>
</ul>


<p>So these listed functions need to be wrapped, and the system's headers need to be used instead of providing headers from a specific version.</p>

<p>I can continue working on this issue and submit a pull request if you'd like.</p></p>


### Sat, 12 Dec 2015 02:19:10 -0500 / c0deh4cker 

<p><p>Oh, OS X doesn't provide headers for its <tt>/usr/lib/libicucore.dylib</tt> (which <em>does</em> have all the functions we need). How fun.</p></p>


