# [ISS-90] Laravel style controllers

[XML Source](./xml/ISS-90.xml)
<p><p>I set up a typical JSON API route using Perfect. </p>

<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: swift.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
<span class="code-keyword">public</span> func PerfectServerModuleInit() {
    Routing.Handler.registerGlobally()
    
    Routing.Routes[<span class="code-quote">"GET"</span>, <span class="code-quote">"heartbeat"</span>] = { response in
        <span class="code-keyword">return</span> HeartbeatHandler()
    }
}

class HeartbeatHandler: RequestHandler {
    
    func handleRequest(request: WebRequest, response: WebResponse) {
        response.addHeader(<span class="code-quote">"Content-Type"</span>, value: <span class="code-quote">"application/json"</span>)
        let encoder = JSONEncode()
        
        <span class="code-keyword">do</span> {
            let data = <span class="code-keyword">try</span> encoder.encode([<span class="code-quote">"lub"</span>: <span class="code-quote">"dub"</span>])
            response.appendBodyString(data)
        } <span class="code-keyword">catch</span> {
            response.setStatus(500, message: <span class="code-quote">"Could not create data"</span>)
        }
        
        response.requestCompletedCallback()
    }
    
}
</pre>
</div></div>

<p>Though it works well, this is very verbose. It would be nicer if Perfect took some inspiration from Laravel like so.</p>

<p>Routes.swift</p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: swift.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
Route.get(<span class="code-quote">"heartbeat"</span>) { request in 
    <span class="code-keyword">return</span> HeartbeatController().index(request)
}
</pre>
</div></div>

<p>HeartbeatController.swift</p>
<div class="code panel" style="border-width: 1px;"><div class="codeContent panelContent">
<div class="error"><span class="error">Unable to find source-code formatter for language: swift.</span> Available languages are: actionscript, html, java, javascript, none, sql, xhtml, xml</div><pre>
class HeartbeatController: Controller {
    func index(request: Request) -&gt; AnyObject {
        <span class="code-keyword">return</span> [<span class="code-quote">"lub"</span>: <span class="code-quote">"dub"</span>]
    }
}
</pre>
</div></div>

<p>This wouldn't be hard to implement, but I'm wondering if something like this is in the scope of Perfect, or if it's something that should be built as a separate project. </p>

<p>I'd be very interested in working on this.</p></p>





Status|Resolution|Reporter|Assignee
------|----------|--------|--------
Closed|Unresolved|[Tanner](tannernelson)|[Unassigned]($-1)





Created|Mon, 18 Jan 2016 15:42:21 -0500
-------|--------------
Updated|Thu, 28 Jan 2016 17:27:53 -0500
Resolved|


## Comments




### Thu, 28 Jan 2016 17:22:56 -0500 / kaandedeoglu 

<p><p>+1 from me, this kind of syntax is very convenient for simple responses.</p>

<p>For reference there are a few Swift frameworks that support this kind of syntax, namely:</p>

<p><a href="https://github.com/tannernelson/vapor" class="external-link" rel="nofollow">Vapor</a><br/>
<a href="https://github.com/nestproject/Frank" class="external-link" rel="nofollow">Frank</a><br/>
<a href="https://github.com/Zewo/Router" class="external-link" rel="nofollow">Zewo's Router</a></p></p>


