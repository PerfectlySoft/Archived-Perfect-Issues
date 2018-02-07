# [ISS-15] Infinite loop when calling connect()

[XML Source](./xml/ISS-15.xml)
<p><p>When using the MySQL connector, PerfectServer goes into an infinite loop when attempting to call the connect() method.</p>

<p>Back trace:</p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">
    etc…
    
    frame #261617: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261618: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261619: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261620: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261621: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261622: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261623: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261624: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261625: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261626: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261627: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261628: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261629: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261630: 0x0000000104801555 MySQL`<span class="code-keyword">static</span> UnsafeMutablePointer.alloc(num=10) -&gt; UnsafeMutablePointer&lt;A&gt; + 21 at MySQL.swift:30
    frame #261631: 0x00000001048036b1 MySQL`<span class="code-keyword">static</span> MySQL.(p=0x0000000101407840, ret=0x00007fff5fbfc338) -&gt; (UnsafeMutablePointer&lt;Int8&gt;, Int)).(closure ISS-15) + 145 at MySQL.swift:243
    frame #261632: 0x00000001048038c3 MySQL`thunk + 35 at MySQL.swift:0
    frame #261633: 0x00000001048039a9 MySQL`partial apply <span class="code-keyword">for</span> thunk + 89 at MySQL.swift:0
    frame #261634: 0x0000000100b14a23 libswiftCore.dylib`partial apply forwarder <span class="code-keyword">for</span> Swift.<span class="code-object">String</span>.(withCString &lt;A&gt; ((Swift.UnsafePointer&lt;Swift.Int8&gt;) <span class="code-keyword">throws</span> -&gt; A) <span class="code-keyword">throws</span> -&gt; A).(closure ISS-15) + 67
    frame #261635: 0x00000001009f28b1 libswiftCore.dylib`Swift.ContiguousArray.withUnsafeBufferPointer &lt;A&gt; ((Swift.UnsafeBufferPointer&lt;A&gt;) <span class="code-keyword">throws</span> -&gt; A1) <span class="code-keyword">throws</span> -&gt; A1 + 145
    frame #261636: 0x0000000100a462ae libswiftCore.dylib`Swift.<span class="code-object">String</span>.withCString &lt;A&gt; ((Swift.UnsafePointer&lt;Swift.Int8&gt;) <span class="code-keyword">throws</span> -&gt; A) <span class="code-keyword">throws</span> -&gt; A + 142
    frame #261637: 0x0000000104803558 MySQL`<span class="code-keyword">static</span> MySQL.convertString(s=<span class="code-quote">"127.0.0.1"</span>, self=0x0000000104abd240) -&gt; (UnsafeMutablePointer&lt;Int8&gt;, Int) + 456 at MySQL.swift:250
    frame #261638: 0x0000000104803e39 MySQL`MySQL.connect(host=<span class="code-quote">"127.0.0.1"</span>, user=<span class="code-quote">"root"</span>, password=<span class="code-quote">"4EYmZL9rcXzE2j9J"</span>, db=nil, port=0, socket=nil, flag=0, self=(ptr = 0x0000000104002a00)) -&gt; Bool + 617 at MySQL.swift:267
    frame #261639: 0x0000000100f9be05 HelloPerfectServer`PerfectServerModuleInit() -&gt; () + 1141 at PerfectHandlers.swift:35
    frame #261640: 0x000000010059bd22 PerfectLib`DynamicLoader.(realPath=<span class="code-quote">"./PerfectLibraries/HelloPerfectServer.framework/Versions/Current/HelloPerfectServer"</span>, moduleName=<span class="code-quote">"HelloPerfectServer"</span>, self=(initFuncName = <span class="code-quote">"PerfectServerModuleInit"</span>))(<span class="code-object">String</span>, moduleName : <span class="code-object">String</span>) -&gt; Bool + 5730 at DynamicLoader.swift:72
    frame #261641: 0x000000010059a629 PerfectLib`DynamicLoader.loadFramework(atPath=<span class="code-quote">"./PerfectLibraries<span class="code-comment">//HelloPerfectServer.framework/"</span>, self=(initFuncName = <span class="code-quote">"PerfectServerModuleInit"</span>)) -&gt; Bool + 633 at DynamicLoader.swift:45
</span>    frame #261642: 0x000000010059482c PerfectLib`specialized PerfectServer.(name=<span class="code-quote">"HelloPerfectServer.framework/"</span>, baseDir=(internalPath = <span class="code-quote">"./PerfectLibraries/"</span>), dl=(initFuncName = <span class="code-quote">"PerfectServerModuleInit"</span>)) -&gt; ()).(closure ISS-15) + 716 at PerfectServer.swift:52
    frame #261643: 0x0000000100594fec PerfectLib`_TPA__TTSf2n_i_n___TFFV10PerfectLib13PerfectServer18initializeServicesFT_T_U_FSST_ + 156 at PerfectServer.swift:0
    frame #261644: 0x00000001005ff2a4 PerfectLib`Dir.forEachEntry(closure=0x0000000100594f50 PerfectLib`_TPA__TTSf2n_i_n___TFFV10PerfectLib13PerfectServer18initializeServicesFT_T_U_FSST_ at PerfectServer.swift, self=(internalPath = <span class="code-quote">"./PerfectLibraries/"</span>), $error=ErrorProtocol @ 0x00007fff5fbfec90) -&gt; ()) <span class="code-keyword">throws</span> -&gt; () + 48132 at Dir.swift:144
    frame #261645: 0x00000001005944d2 PerfectLib`PerfectServer.initializeServices() -&gt; () + 1298 at PerfectServer.swift:65
    frame #261646: 0x000000010021089f perfectserverhttp`startServer($error=ErrorProtocol @ 0x00007fff5fbff608) <span class="code-keyword">throws</span> -&gt; () + 3951 at main_http.swift:86
    frame #261647: 0x0000000100213e87 perfectserverhttp`main + 87 at main.swift:21
    frame #261648: 0x00007fff817f65ad libdyld.dylib`start + 1
    frame #261649: 0x00007fff817f65ad libdyld.dylib`start + 1
</pre>
</div></div></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Mike Greiner](mgreiner)|[Unassigned]($-1)





Created|Thu, 28 Apr 2016 11:20:12 -0400
-------|--------------
Updated|Thu, 19 May 2016 21:58:32 -0400
Resolved|


## Comments




### Thu, 19 May 2016 21:58:32 -0400 / mgreiner 

<p><p>Fixed by cfa625ae20dda3b4cb5c138fe62d86e00c4a84b6</p></p>


