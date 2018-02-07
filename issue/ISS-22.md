# [ISS-22] MariaDB compatibility?

[XML Source](../xml/ISS-22.xml)
<p><p>MariaDB is generally a drop-in replacement for MySQL, but attempting to build this module with MariaDB installed on the system (instead of MySQL) results in the error <tt>ld: library not found for -lmysqlclient for architecture x86_64</tt>.  Is there any way this module could be used with MariaDB?</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Resolved|Done|[Collin Hundley](collinhundley)|[Rockford Wei]($rocky)





Created|Fri, 17 Jun 2016 18:56:03 -0400
-------|--------------
Updated|Mon, 24 Oct 2016 09:45:46 -0400
Resolved|Mon, 24 Oct 2016 09:45:46 -0400


## Comments




### Wed, 5 Oct 2016 12:02:52 -0400 / rocky 

<p><p>Solved by these new repos:<br/>
Perfect-MariaDB<br/>
Perfect-mariadbclient<br/>
Perfect-mariadbclient-linux</p></p>


### Mon, 24 Oct 2016 09:45:46 -0400 / rocky 

<p><p>Hi Collin Hundley,</p>

<p>Please check the link below for MariaDB connector:<br/>
<a href="https://github.com/PerfectlySoft/Perfect-MariaDB" class="external-link" rel="nofollow">https://github.com/PerfectlySoft/Perfect-MariaDB</a></p>


<p>All comments and suggestions are very welcome.</p>

<p>Thanks for reporting this issue and wish you all the best.</p>


<p>– Rockford Wei</p></p>


