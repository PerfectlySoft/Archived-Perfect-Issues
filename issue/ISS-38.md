# [ISS-38] Send data with POST / GET request

[XML Source](../xml/ISS-38.xml)
<p><p>Hi,<br/>
First, thank you so much for your awesome framework.<br/>
Please help to explain how could i send data with POST / GET request from client and how to receive those params on server via Swift code ?<br/>
Many thanks for your help.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Viva](tuyenbq)|[Unassigned]($-1)





Created|Mon, 30 Nov 2015 07:49:02 -0500
-------|--------------
Updated|Tue, 21 Jun 2016 17:37:02 -0400
Resolved|


## Comments




### Mon, 30 Nov 2015 08:14:21 -0500 / ankish 

<p><p>Its clear in the code. Please check - Client / Server project.</p></p>


### Thu, 3 Dec 2015 00:17:33 -0500 / tuyenbq 

<p><p>oh yes, i got it. Tks!</p></p>


### Thu, 3 Dec 2015 00:38:54 -0500 / tranhieutt 

<p><p>For example, you can ref,very clear:<br/>
	func buttonPressed(Sender: AnyObject) {<br/>
		if let loc = self.selectedLocation {</p>

<p>			let lat = loc.coordinate.latitude<br/>
			let long = loc.coordinate.longitude</p>

<p>			let postBody = "lat=&#40;lat)&amp;long=&#40;long)"</p>

<p>			let req = NSMutableURLRequest(URL: NSURL(string: END_POINT)!)<br/>
			req.HTTPMethod = "POST"<br/>
			req.HTTPBody = postBody.dataUsingEncoding(NSUTF8StringEncoding)</p>

<p>			let session = NSURLSession.sharedSession()</p>

<p>			let task = session.dataTaskWithRequest(req, completionHandler: {<br/>
				(d:NSData?, res:NSURLResponse?, e:NSError?) -&gt; Void in<br/>
				if let _ = e </p>
{
					print("Request failed with error \(e!)")
				}
<p> else {</p>

<p>					let strData =  String(data: d!, encoding: NSUTF8StringEncoding)<br/>
					print("Request succeeded with data &#40;strData)")<br/>
					do {<br/>
						if let strOk = strData {<br/>
							let jsonDecoded = try JSONDecode().decode(strOk)<br/>
							if let jsonMap = jsonDecoded as? JSONDictionaryType {</p>

<p>								if let sets = jsonMap.dictionary<span class="error">&#91;&quot;resultSets&quot;&#93;</span> as? JSONArrayType {<br/>
									// just one result in this app<br/>
									if let result = sets.array.first as? JSONDictionaryType {<br/>
										if let timeStr = result.dictionary<span class="error">&#91;&quot;time&quot;&#93;</span> as? String,<br/>
											let lat = result.dictionary<span class="error">&#91;&quot;lat&quot;&#93;</span> as? Double,<br/>
											let long = result.dictionary<span class="error">&#91;&quot;long&quot;&#93;</span> as? Double {</p>

<p>												self.timeStr = timeStr<br/>
												self.lat = lat<br/>
												self.long = long</p>

<p>												dispatch_async(dispatch_get_main_queue()) </p>
{
													self.performSegueWithIdentifier("showMap", sender: self)
												}
<p>										}<br/>
									}<br/>
								}<br/>
							}<br/>
						}<br/>
					} catch let ex </p>
{
						print("JSON decoding failed with exception \(ex)")
					}
<p>				}<br/>
			})</p>

<p>			task.resume()</p>

<p>		} else {<br/>
			// no location</p>

<p>			let alert = UIAlertController(title: "No Location", message: "Ensure that location services are available and try again.", preferredStyle: .Alert)<br/>
			let action = UIAlertAction(title: "OK", style: .Default) </p>
{
				(a:UIAlertAction) -&gt; Void in
			}
<p>			alert.addAction(action)<br/>
			self.presentViewController(alert, animated: true) { }<br/>
		}<br/>
	}</p></p>


### Thu, 3 Dec 2015 03:34:54 -0500 / tuyenbq 

<p><p>thank you, thank you and thank you so much guy. <img class="emoticon" src="http://jira.perfect.org:8080/images/icons/emoticons/thumbs_up.png" height="16" width="16" align="absmiddle" alt="" border="0"/></p></p>


### Sun, 20 Dec 2015 03:38:53 -0500 / tomikes 

<p><p>I want an example to use the library to do the web background, it is best to have a picture of the kind!<br/>
help me。。</p></p>


### Tue, 21 Jun 2016 17:37:02 -0400 / jonog 

<p><p>Closing the issue as it's been addressed.<br/>
However <a href="http://jira.perfect.org:8080/secure/ViewProfile.jspa?name=Tomikes" class="user-hover" rel="Tomikes">shang zhang ping</a> if you're still having issues could you open a new issue with some specifics and some code samples you're having problems with. Thanks!</p></p>


