# [ISS-76] Load/Reload .so without restart server?

[XML Source](../xml/ISS-76.xml)
<p><p>It's an important feature for production environment.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Resolved|Won't Do|[Felix](SimpleFelix)|[Kyle Jessup]($kjessup)





Created|Mon, 11 Jan 2016 23:14:18 -0500
-------|--------------
Updated|Mon, 22 Jan 2018 10:38:23 -0500
Resolved|Mon, 22 Jan 2018 10:38:22 -0500


## Comments




### Sat, 20 Feb 2016 22:56:07 -0500 / sahin 

<p><p>+1</p></p>


### Mon, 22 Jan 2018 10:38:23 -0500 / rocky 

<p><p>Hi <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=SimpleFelix" class="user-hover" rel="SimpleFelix">Felix</a> , you actually can load .so into a Perfect Server as described in my personal repo: cswift:</p>


<p><a href="https://github.com/RockfordWei/CSwift" class="external-link" rel="nofollow">https://github.com/RockfordWei/CSwift</a></p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<pre class="code-java">
<span class="code-comment">// First thing first, make sure your dll path is an dynamic library in an ABSOLUTE path.
</span><span class="code-comment">// on Mac, the suffix is <span class="code-quote">".dylib"</span>; on Linux, it is <span class="code-quote">".so"</span>
</span>guard let lib = dlopen(dllpath,  RTLD_LAZY) <span class="code-keyword">else</span> {
  exit(0)
}

<span class="code-comment">// declare the api prototype to call
</span>typealias AddFunc = @convention(c) (CInt, CInt) -&gt; CInt

<span class="code-comment">// look up the function in the library
</span>guard let c_add = dlsym(lib, <span class="code-quote">"c_add"</span>) <span class="code-keyword">else</span> {
  dlclose(lib)
  exit(0)
}

<span class="code-comment">// attache the function to the real API address
</span>let add = unsafeBitCast(c_add, to: AddFunc.self)

<span class="code-comment">// call the C method, dynamically
</span>let x = add(1, 2)
print(x)

<span class="code-comment">// release resources
</span>dlclose(lib)

</pre>
</div></div>
<p>However, it is the only way to load a dynamic library in a C formed API, and you can re-map it into a class instance. Since Swift is more like a static language, the "import" action only run once but there is no such a "dismiss" method.</p>


<p>A very typical of such a usage can be found on</p>


<p><a href="https://github.com/PerfectlySoft/Perfect-TensorFlow/blob/master/Sources/PerfectTensorFlow/APILoader.swift" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect-TensorFlow/blob/master/Sources/PerfectTensorFlow/APILoader.swift</a></p>



<p>Perfect-TensorFlow is using dlopen and dlsym to attach tensorflow.so into memory and wrap it up with a dozen of class instances without losing any performance.</p>



<p>Unfortunately, everything has pros and cons. The dynamic library method works good for module replacement but lost the strong type checking as expected in all swifts. Conventional static link is still the very suggested option.</p>



<p>Thank you.</p>



<p>Rocky.</p></p>


