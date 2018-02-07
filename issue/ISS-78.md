# [ISS-78] JSONEncode should use type methods or be renamed JSONEncoder

[XML Source](../xml/ISS-78.xml)
<p><p>Hi everybody,</p>

<p>First of all I wanna thank everyone for the great work on this project. I'm so excited about being able to use swift in full stack mode!</p>

<p>I was browsing through the docs and came across the <tt>JSONEncode</tt> and <tt>JSONDecode</tt> classes. Initially I was thinking it would make more sense for the <tt>JSONEncode</tt> class to use type methods (a.k.a. static methods) but then I checked out the <tt>JSONDecode</tt> class and noticed it uses instance variables. So what would be more appropriate would be to rename the classes to <tt>JSONEncoder</tt> and <tt>JSONDecoder</tt> because the instances of these types will be doing the job.</p>

<p>I can perform a refactoring and submit a pull request. What do you guys think?</p>

<p>Califrench</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Scott Gauthreaux](califrench)|[Unassigned]($-1)





Created|Tue, 12 Jan 2016 16:40:01 -0500
-------|--------------
Updated|Wed, 27 Jan 2016 11:30:22 -0500
Resolved|


## Comments




### Wed, 27 Jan 2016 09:51:54 -0500 / kjessup 

<p><p>This has bugged me for a bit now, and not being pleased with the JSON code anyway, I have written some new encoding and decoding code using a different methodology. This new stuff is much more flexible and easy to use IMO. I am committing the addition now and will follow up with the docs and to convert the one (I think there's just one) example which uses JSON.</p></p>


### Wed, 27 Jan 2016 10:39:59 -0500 / califrench 

<p><p>Nice work Kyle, I did notice that you made a slight typo in the name of <tt>JSONConvertable</tt> (instead of <tt>JSONConvertible</tt>) I fixed it and created a new pull request.</p></p>


