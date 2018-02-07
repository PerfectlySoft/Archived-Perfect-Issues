//
//  UserController.swift
//  TaskManager
//
//  Created by Hustling Technologies on 7/3/17.
//
//
import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import MongoKitten
import Cheetah


enum UserScope : String {
    case admin = "admin"
    case user = "user"
}

class User {
    static let collectionName = "Users"
    static let id = (name:"_id", type : String.self)
    static let name = (name:"name", type : String.self)
    static let password = (name:"password", type : String.self)
    static let username = (name:"username", type : String.self)
    static let scope = (name:"scope", type : UserScope.self)
    
}

class UserController {
    
    class func get(request: HTTPRequest, response: HTTPResponse) {
        let db = try! Database(Constants.DATABASE_URL)
        let collection = db[User.collectionName]
        let results = try! collection.find(projecting: [User.password.name : false])
        let resultArray = "[" +
                            results.map({ (document) -> String in
                                return document.convert(toObject: JSONData.self).serializedString()
                            }).joined(separator: ",")
                            + "]"
        response.setHeader(HTTPResponseHeader.Name.contentType, value: "application/json")
        response.appendBody(bytes: [UInt8](resultArray.data(using: .utf8)!))
        response.completed()
    }
    
    class func getOne(request: HTTPRequest, response: HTTPResponse) {
        let db = try! Database(Constants.DATABASE_URL)
        let collection = db[User.collectionName]
        let id = request.urlVariables["id"]
        let results = try! collection.find([User.id.name : ObjectId(id)] ,projecting: [User.password.name : false])
        
        guard let first = results.first else {
            response.completed(status: HTTPResponseStatus.badRequest)
            return
        }
        
        response.setHeader(HTTPResponseHeader.Name.contentType, value: "application/json")
        response.appendBody(bytes: first.convert(toObject: JSONData.self).serialize())
        response.completed()
    }
}
