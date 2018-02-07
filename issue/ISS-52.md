# [ISS-52] Cannot build on osx, make failed

[XML Source](./xml/ISS-52.xml)
<p><p>Got this after running make on el capitan, did i miss something?</p>

<p>&lt;module-includes&gt;:1:9: note: in file included from &lt;module-includes&gt;:1:</p>
<h1><a name="import%22openssl%2Fssl.h%22"></a>import "openssl/ssl.h"</h1>
<p>        ^<br/>
/Users/zipeldiablo/Perfect/PerfectLib/linked/OpenSSL_Linux/openssl/ssl.h:146:11: note: in file included from /Users/zipeldiablo/Perfect/PerfectLib/linked/OpenSSL_Linux/openssl/ssl.h:146:</p>
<h1><a name="include%3Copenssl%2Feos2.h%3E"></a>include &lt;openssl/e_os2.h&gt;</h1>
<p>          ^<br/>
/Users/zipeldiablo/Perfect/PerfectLib/linked/OpenSSL_Linux/openssl/e_os2.h:56:10: error: 'openssl/opensslconf.h' file not found</p>
<h1><a name="include%3Copenssl%2Fopensslconf.h%3E"></a>include &lt;openssl/opensslconf.h&gt;</h1>
<p>         ^<br/>
NetTCPSSL.swift:26:8: error: could not build Objective-C module 'OpenSSL'<br/>
import OpenSSL<br/>
       ^<br/>
make<span class="error">&#91;1&#93;</span>: <em>*</em> <span class="error">&#91;ICU.o&#93;</span> Error 1<br/>
make: <em>*</em> <span class="error">&#91;all&#93;</span> Error 2</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Thibaut Noah](tirrorex)|[Unassigned]($-1)





Created|Tue, 15 Dec 2015 06:28:32 -0500
-------|--------------
Updated|Sun, 24 Jan 2016 07:08:30 -0500
Resolved|


## Comments




### Tue, 15 Dec 2015 09:06:48 -0500 / kjessup 

<p><p>The makefiles are not yet good to go on OS X. You still need to use Xcode for now.</p></p>


### Tue, 15 Dec 2015 09:59:20 -0500 / tirrorex 

<p><p>I was using the makefile because i cannot build on xcode, example projet doesn't find perfectLib</p></p>


### Wed, 16 Dec 2015 05:32:29 -0500 / begoodi 

<p><p>I have the same issue with the import of perfectLib. Could you describe how to launch server on OS X under Xcode ?</p></p>


### Wed, 16 Dec 2015 12:39:01 -0500 / maxerogers 

<p><p>Also having this issue. </p></p>


### Sat, 19 Dec 2015 19:50:14 -0500 / adamsliwakowski 

<p><p>Makefiles should be used only on linux. When you want to open an example project on Mac OS X : <br/>
1. Open <tt>Perfect/Examples/Examples.xcworkspace</tt><br/>
2. Build target <tt>PerfectLibOSX</tt> and <tt>PerfectLibiOS</tt><br/>
3. Inside THIS workspace run target for example application you want.</p></p>


### Mon, 28 Dec 2015 11:01:10 -0500 / tirrorex 

<p><p>Thanks for the answer, it fixed my issue</p></p>


