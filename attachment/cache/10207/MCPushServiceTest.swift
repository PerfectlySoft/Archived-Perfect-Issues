//
//  MCPushServiceTest.swift
//  MCPushServer
//
//  Created by Matteo Manni on 15/09/2016.
//
//

import XCTest
import SQLite
import PerfectLib
import PerfectNotifications
import PerfectNet
import PerfectHTTP
import Foundation
import PerfectThread

class MCPushServiceTest: XCTestCase {

    // Change the following to a valid APNS configuration, certificate and device token for your environment
    let APNSToken = "42c6c2c7da04f3da9cc4cfb4c9bf1c1ff7fa3fa053687fc5c07e65a149954f3d"
    let configurationName = "YouConfiguration"
    
    let certificateFilePath = "Your PEM File Here"
    let ckMSIPEm = ".You pricate key file here"
    // End
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSendMultipleNotifications() {
        NotificationPusher.addConfigurationIOS(name: configurationName) {
            (net: NetTCPSSL) in
            
            guard net.useCertificateFile(cert: self.certificateFilePath) &&
                net.usePrivateKeyFile(cert: self.ckMSIPEm) &&
                net.checkPrivateKey() else {
                    let code = Int32(net.errorCode())
                    print("Error validating private key file: \(net.errorStr(forCode: code))")
                    return
            }
        }
        
        NotificationPusher.development = true
        
        let exp = expectation(description: "testSendNormalNotification")
        
        for i in  1...10 {
            let notifications = [IOSNotificationItem.alertBody("Hi from MCPushServerTests: \(i)"), IOSNotificationItem.sound("default")]
            let n = NotificationPusher()
            n.apnsTopic = "Your.APNS.Topic"
            
            n.pushIOS(configurationName: configurationName, deviceToken: APNSToken, expiration: 0, priority: 10, notificationItems: notifications) {
                response in
                let status = response.status
                print("NotificationResponse: \(status) \(response.body)")
                XCTAssertTrue(status.code == HTTPResponseStatus.ok.code, "We expected an 'ok' response status, got \(status)")
                if i == 10 {
                    exp.fulfill()
                }
            }
        }
        waitForExpectations(timeout: 20)
    }
}
