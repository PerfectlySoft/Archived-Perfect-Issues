# [ISS-51] pthread_cond_timedwait_relative_np unresolved,any one can help me?

[XML Source](../xml/ISS-51.xml)
<p><p>Threading.swift:99:14: error: use of unresolved identifier 'pthread_cond_timedwait_relative_np'<br/>
                        let ret = pthread_cond_timedwait_relative_np(&amp;self.cond, &amp;self.mutex, &amp;tm);<br/>
                                  ^<del><sub></del><del></sub></del><del><sub></del><del></sub></del><del><sub></del><del></sub></del>~~~<br/>
make: <em>*</em> <span class="error">&#91;Threading.o&#93;</span> Error 1</p>

<p>===============<br/>
error occur when i   make</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[cccccc](chenshaobo)|[Unassigned]($-1)





Created|Tue, 15 Dec 2015 02:28:42 -0500
-------|--------------
Updated|Tue, 15 Dec 2015 09:25:20 -0500
Resolved|


## Comments




### Tue, 15 Dec 2015 07:56:56 -0500 / khalil-ciret 

<p><p>Same here, didn't have this problem yesterday. Likely because of last commit?</p>

<p>Ubuntu 15-10, virtualized</p></p>


### Tue, 15 Dec 2015 09:25:20 -0500 / kjessup 

<p><p>This has been corrected. Thank you.</p></p>


