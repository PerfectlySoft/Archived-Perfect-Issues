# [ISS-23] Doesn't Build on Ubuntu 14.04

[XML Source](./xml/ISS-23.xml)
<p><p>libmysqlclient-dev is installed.  I don't observe "MYSQL_SERVER_PUBLIC_KEY" in the MySQL headers.  CloudFoundry uses Ubuntu 14.04.</p>

<p>Ubuntu 14.04 with 2016-06-20 Swift and 'swift build' yields:</p>

<p>note: you may be able to install mysqlclient using your system-packager:</p>

<p>    apt-get install libmysqlclient-dev</p>

<p>note: you may be able to install mysqlclient using your system-packager:</p>

<p>    apt-get install libmysqlclient-dev</p>

<p>note: you may be able to install mysqlclient using your system-packager:</p>

<p>    apt-get install libmysqlclient-dev</p>

<p>Compile Swift Module 'MySQL' (1 sources)<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:443:11: error: use of unresolved identifier 'MYSQL_OPT_BIND'<br/>
                        return MYSQL_OPT_BIND<br/>
                               ^<del><sub></del><del></sub></del>~~~<br/>
mysqlclient.MYSQL_BIND:1:18: note: did you mean 'MYSQL_BIND'?<br/>
public typealias MYSQL_BIND = st_mysql_bind<br/>
                 ^<br/>
mysqlclient.MYSQL_TYPE_BIT:1:12: note: did you mean 'MYSQL_TYPE_BIT'?<br/>
public var MYSQL_TYPE_BIT: enum_field_types </p>
{ get }<br/>
           ^<br/>
mysqlclient.MYSQL_TYPE_TINY:1:12: note: did you mean 'MYSQL_TYPE_TINY'?<br/>
public var MYSQL_TYPE_TINY: enum_field_types { get }
<p>           ^<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:445:11: error: use of unresolved identifier 'MYSQL_OPT_SSL_KEY'<br/>
                        return MYSQL_OPT_SSL_KEY<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del></sub><br/>
mysqlclient.MYSQL_OPT_USE_RESULT:1:12: note: did you mean 'MYSQL_OPT_USE_RESULT'?<br/>
public var MYSQL_OPT_USE_RESULT: mysql_option </p>
{ get }<br/>
           ^<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:447:11: error: use of unresolved identifier 'MYSQL_OPT_SSL_CERT'<br/>
                        return MYSQL_OPT_SSL_CERT<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del></sub>~<br/>
mysqlclient.MYSQL_OPT_USE_RESULT:1:12: note: did you mean 'MYSQL_OPT_USE_RESULT'?<br/>
public var MYSQL_OPT_USE_RESULT: mysql_option { get }
<p>           ^<br/>
mysqlclient.MYSQL_OPT_RECONNECT:1:12: note: did you mean 'MYSQL_OPT_RECONNECT'?<br/>
public var MYSQL_OPT_RECONNECT: mysql_option </p>
{ get }<br/>
           ^<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:449:11: error: use of unresolved identifier 'MYSQL_OPT_SSL_CA'<br/>
                        return MYSQL_OPT_SSL_CA<br/>
                               ^<del><sub></del><del></sub></del><del>~</del><br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:451:11: error: use of unresolved identifier 'MYSQL_OPT_SSL_CAPATH'<br/>
                        return MYSQL_OPT_SSL_CAPATH<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del></sub>~~~<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:453:11: error: use of unresolved identifier 'MYSQL_OPT_SSL_CIPHER'<br/>
                        return MYSQL_OPT_SSL_CIPHER<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del></sub>~~~<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:455:11: error: use of unresolved identifier 'MYSQL_OPT_SSL_CRL'<br/>
                        return MYSQL_OPT_SSL_CRL<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del></sub><br/>
mysqlclient.MYSQL_OPT_PROTOCOL:1:12: note: did you mean 'MYSQL_OPT_PROTOCOL'?<br/>
public var MYSQL_OPT_PROTOCOL: mysql_option { get }
<p>           ^<br/>
mysqlclient.MYSQL_OPT_USE_RESULT:1:12: note: did you mean 'MYSQL_OPT_USE_RESULT'?<br/>
public var MYSQL_OPT_USE_RESULT: mysql_option </p>
{ get }<br/>
           ^<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:457:11: error: use of unresolved identifier 'MYSQL_OPT_SSL_CRLPATH'<br/>
                        return MYSQL_OPT_SSL_CRLPATH<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del><del></sub></del><br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:459:11: error: use of unresolved identifier 'MYSQL_OPT_CONNECT_ATTR_RESET'<br/>
                        return MYSQL_OPT_CONNECT_ATTR_RESET<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del><del></sub></del><del><sub></del></sub>~<br/>
mysqlclient.MYSQL_OPT_CONNECT_TIMEOUT:1:12: note: did you mean 'MYSQL_OPT_CONNECT_TIMEOUT'?<br/>
public var MYSQL_OPT_CONNECT_TIMEOUT: mysql_option { get }
<p>           ^<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:461:11: error: use of unresolved identifier 'MYSQL_OPT_CONNECT_ATTR_ADD'<br/>
                        return MYSQL_OPT_CONNECT_ATTR_ADD<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del><del></sub></del><del>~</del><br/>
mysqlclient.MYSQL_OPT_CONNECT_TIMEOUT:1:12: note: did you mean 'MYSQL_OPT_CONNECT_TIMEOUT'?<br/>
public var MYSQL_OPT_CONNECT_TIMEOUT: mysql_option </p>
{ get }<br/>
           ^<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:463:11: error: use of unresolved identifier 'MYSQL_OPT_CONNECT_ATTR_DELETE'<br/>
                        return MYSQL_OPT_CONNECT_ATTR_DELETE<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del><del></sub></del><del><sub></del></sub>~~<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:465:11: error: use of unresolved identifier 'MYSQL_SERVER_PUBLIC_KEY'<br/>
                        return MYSQL_SERVER_PUBLIC_KEY<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del><del></sub></del>~~<br/>
mysqlclient.MYSQL_SERVER_SUFFIX_DEF:1:12: note: did you mean 'MYSQL_SERVER_SUFFIX_DEF'?<br/>
public var MYSQL_SERVER_SUFFIX_DEF: String { get }
<p>           ^<br/>
/usr/src/Perfect-MySQL/Sources/MySQL/MySQL.swift:469:11: error: use of unresolved identifier 'MYSQL_OPT_CAN_HANDLE_EXPIRED_PASSWORDS'<br/>
                        return MYSQL_OPT_CAN_HANDLE_EXPIRED_PASSWORDS<br/>
                               ^<del><sub></del><del></sub></del><del><sub></del><del></sub></del><del><sub></del><del></sub></del><del><sub></del></sub>~<br/>
&lt;unknown&gt;:0: error: build had 1 command failures<br/>
swift-build: error: exit(1): /usr/bin/swift-build-tool -f /usr/src/Perfect-MySQL/.build/debug.yaml</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Resolved|Done|[Shao](Synthetel)|[Kyle Jessup]($kjessup)





Created|Thu, 7 Jul 2016 01:37:00 -0400
-------|--------------
Updated|Mon, 3 Oct 2016 09:47:24 -0400
Resolved|Mon, 3 Oct 2016 09:47:24 -0400


## Comments




### Mon, 3 Oct 2016 09:47:24 -0400 / jono 

<p><p>Hi Shao,</p>

<p>All Ubuntu build issues have been resolved.</p>

<p>– Jonathan Guthrie</p></p>


