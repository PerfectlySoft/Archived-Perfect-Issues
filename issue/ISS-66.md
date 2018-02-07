# [ISS-66] Getting started error: No such module PerfectLib

[XML Source](../xml/ISS-66.xml)
<p><p>I am trying to get started with Perfect and just cloned the repository.  </p>

<p>Opened up 'Authenticator' and tried to build the Authenticator Server.  Got an error (No such module PerfectLib).  </p>

<p><span class="image-wrap" style=""><img src="https://cloud.githubusercontent.com/assets/579268/12039294/366c019e-ae2d-11e5-8d6f-57e02946950c.png" style="border: 0px solid black" /></span></p>

<p>So, I opened up PerfectLib and tried to build it.  It build <img class="emoticon" src="http://jira.perfect.org:8080/images/icons/emoticons/smile.png" height="16" width="16" align="absmiddle" alt="" border="0"/> but gave an error of 'No umbrella header found for target 'PerfectLibOSX, module map will not be generated.</p>

<p><span class="image-wrap" style=""><img src="https://cloud.githubusercontent.com/assets/579268/12039313/4a1231d2-ae2d-11e5-9b9b-c7d527b52c21.png" style="border: 0px solid black" /></span></p>

<p>After building the PerfectLib (with this warning) and going back to the Authenticator project, I still get the same error.</p>

<p>I suspect I missed a simple step here.  Can someone suggest what I missed?</p>

<p>Thanks,</p>

<p>Charlie</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[cwoloszynski](cwoloszynski)|[Unassigned]($-1)





Created|Tue, 29 Dec 2015 13:12:52 -0500
-------|--------------
Updated|Tue, 29 Dec 2015 13:22:47 -0500
Resolved|


## Comments




### Tue, 29 Dec 2015 13:22:47 -0500 / cwoloszynski 

<p><p>For those that might find this issue, I found my mistake.  </p>

<p>I opened the Authenticator Project instead of opening the Examples Workspace.  If you open the examples workspace instead in XCODE, it all works out of the box.</p>
</p>


