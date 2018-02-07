# [ISS-60] The file "TapTracker" was not found.

[XML Source](./xml/ISS-60.xml)
<p><p>i built the server and module, run the server:<br/>
<span class="image-wrap" style=""><img src="https://cloud.githubusercontent.com/assets/4246681/11949145/f548ced4-a8b6-11e5-833b-291ca8323792.png" style="border: 0px solid black" /></span></p>

<p>then i tap the button in Tap Tracker APP, its get this response:<br/>
Request succeeded with data Optional("The file \"/TapTracker\" was not found.")<br/>
JSON decoding failed with exception SyntaxError("Malformed boolean literal")</p>

<p>how can i resolve it?</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[daqian](jjjjjeffrey)|[Unassigned]($-1)





Created|Tue, 22 Dec 2015 01:23:39 -0500
-------|--------------
Updated|Thu, 24 Dec 2015 11:37:55 -0500
Resolved|


## Comments




### Tue, 22 Dec 2015 02:03:30 -0500 / jjjjjeffrey 

<p><p>i resolved it by copy 'TapTracker.mustache' file into webroot directory, but the server crashed when i tap the button in Tap Tracker APP:<br/>
<span class="image-wrap" style=""><img src="https://cloud.githubusercontent.com/assets/4246681/11949718/cd2e37c6-a8bc-11e5-88d1-4fd747e76c17.png" style="border: 0px solid black" /></span><br/>
is this a swift bug on linux?<br/>
<a href="https://bugs.swift.org/browse/SR-175" class="external-link" rel="nofollow">https://bugs.swift.org/browse/SR-175</a></p></p>


### Thu, 24 Dec 2015 10:14:04 -0500 / kjessup 

<p><p>It's possible that it is the bug you linked to. When I run in lldb the last line of user code is in a catch where it attempts to print the exception that was thrown. It is curious why it is throwing an exception at all here though. I'll poke at it a bit more.</p>

<p>EDIT: It's SQLite throwing an exception trying to prepare a statement. Still poking.</p></p>


### Thu, 24 Dec 2015 11:37:55 -0500 / kjessup 

<p><p>This is corrected now. The crash was definitely caused by the bug you cite, and while I didn't fix that, I did correct the issue which was causing SQLite to throw the exception to begin with.</p>

<p>There seems to be an issue (not present on OS X) initializing global statics when a swift dll is loaded through dlopen.</p></p>


