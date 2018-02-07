# [ISS-26] Build error ld: library not found for -lmysqlclient for architecture x86_64

[XML Source](../xml/ISS-26.xml)
<p><p>After performing prerequisite steps from the readme, still getting a link error<br/>
<tt>ld: library not found for -lmysqlclient for architecture x86_64</tt></p>

<p>I'm using Xcode 8, beta 2, macOS 10.11.5</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Anton Fedorchenko](devValley)|[Unassigned]($-1)





Created|Wed, 20 Jul 2016 09:08:27 -0400
-------|--------------
Updated|Wed, 20 Jul 2016 10:18:22 -0400
Resolved|


## Comments




### Wed, 20 Jul 2016 09:21:23 -0400 / taplin 

<p><p>Just to confirm, the steps you refer to include creating a .pc file or symlinking to the existing .pc file in your MySql installation ? If the .pc file is there per instructions, I would double check that it has the same permissions as its neighbors, and verify that the paths point to a valid location.</p>

<p>I have not used beta3 yet based on issues reported with the swift Language version settings conflicting with auto generated project files, but typically the library not found indicates a missing or misconfigured package config file.</p>

<p>Hope that helps.</p>

<p>Tim </p>

<p>&gt; On Jul 20, 2016, at 7:08 AM, Anton Fedorchenko &lt;notifications@github.com&gt; wrote:<br/>
&gt; <br/>
&gt; After performing prerequisite steps from the readme, still getting a link error<br/>
&gt; ld: library not found for -lmysqlclient for architecture x86_64<br/>
&gt; <br/>
&gt; I'm using Xcode 8, beta 3, macOS 10.11.5<br/>
&gt; <br/>
&gt; —<br/>
&gt; You are receiving this because you are subscribed to this thread.<br/>
&gt; Reply to this email directly, view it on GitHub &lt;<a href="https://github.com/PerfectlySoft/Perfect-MySQL/issues/12" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect-MySQL/issues/12</a>&gt;, or mute the thread &lt;<a href="https://github.com/notifications/unsubscribe-auth/AATZRq0L-dmmtj6KyE64axnH_EOHNYPGks5qXh3LgaJpZM4JQwZL" class="external-link" rel="nofollow">https://github.com/notifications/unsubscribe-auth/AATZRq0L-dmmtj6KyE64axnH_EOHNYPGks5qXh3LgaJpZM4JQwZL</a>&gt;.<br/>
&gt; </p>
</p>


### Wed, 20 Jul 2016 09:44:22 -0400 / devvalley 

<p><p>Sorry, I meant to write beta 2. I have removed <tt>-fno-omit-frame-pointer</tt> from the mysqlclient.pc file after mysql installation. Permissions seem to fine</p>

<p><tt>lrwxr-xr-x  1 MyUser  wheel   54 Jul 20 15:54 mysqlclient.pc -&gt; ../../Cellar/mysql/5.7.13/lib/pkgconfig/mysqlclient.pc</tt></p></p>


### Wed, 20 Jul 2016 10:18:17 -0400 / devvalley 

<p><p>Ok, It worked somehow after reinstalling <tt>mysql</tt> and re-generating the project with <tt>swift package generate-xcodeproj</tt>.</p></p>


