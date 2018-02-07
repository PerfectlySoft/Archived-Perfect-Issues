//
//  main.swift
//  PerfectTemplate
//
//  Created by Kyle Jessup on 2015-11-05.
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

// An example request handler.
// This 'handler' function can be referenced directly in the configuration below.
func handler(data: [String:Any]) -> RequestHandler {
	return {
		request, response in
        print(request.pathComponents)
		// Respond with a simple message.
		response.setHeader(.contentType, value: "text/html")
		response.appendBody(string: "<html><title>Hello, world!</title><body>Hello, world!</body></html>")
		// Ensure that response.completed() is called when your processing is done.
		response.completed()
	}
}
//
//// Configuration data for an example server.
//// This example configuration shows how to launch a server
//// using a configuration dictionary.
//
//
//let confData = [
//	"servers": [
//		// Configuration data for one server which:
//		//	* Serves the hello world message at <host>:<port>/
//		//	* Serves static files out of the "./webroot"
//		//		directory (which must be located in the current working directory).
//		//	* Performs content compression on outgoing data when appropriate.
//		[
//			"name":"localhost",
//			"port":8181,
//			"routes":[
//				["method":"get", "uri":"/users/**", "handler": UserController.get],
//				["method":"get", "uri":"/users/{_id}", "handler": UserController.getOne],
//				["method":"get", "uri":"/**", "handler":PerfectHTTPServer.HTTPHandler.staticFiles,
//				 "documentRoot":"./webroot",
//				 "allowResponseFilters":true]
//			],
//			"filters":[
//				[
//				"type":"response",
//				"priority":"high",
//				"name":PerfectHTTPServer.HTTPFilter.contentCompression,
//				]
//			]
//		]
//	]
//]
//
//do {
//	// Launch the servers based on the configuration data.
//	try HTTPServer.launch(configurationData: confData)
//} catch {
//	fatalError("\(error)") // fatal error launching one of the servers
//}





var routes = Routes()

routes.add(method: .get, uri: "/users", handler: UserController.get)
routes.add(method: .get, uri: "/users/{id}", handler: UserController.getOne)
//
// Trailing wildcard matches any path
routes.add(method: .get, uri: "**", handler: handler(data: [:]))

// Check the console to see the logical structure of what was installed.
print("\(routes.navigator.description)")

// Create server object.
let server = HTTPServer()

// Listen on port 8181.
server.serverPort = 8181

// Add our routes.
server.addRoutes(routes)

do {
    // Launch the HTTP server
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}
