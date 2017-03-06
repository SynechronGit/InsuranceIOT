//
//  SignalRManager.swift
//  IOT
//
//  Created by Markel on 03/03/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class SignalRManager: NSObject {

    var chatHub: Hub?
    var connection: SignalR?
    weak var delegate :signalRManagerDelegate!
    
    static let sharedSignalRManager: SignalRManager = {
        
        let instance = SignalRManager()
        return instance
    }()

    
    override init() {
        
        super.init()
        
        SwiftR.useWKWebView = true
        
        SwiftR.signalRVersion = .v2_2_0
        
        connection = SwiftR.connect("http://swiftr.azurewebsites.net") { [weak self] connection in
            self?.chatHub = connection.createHubProxy("chatHub")
            self?.chatHub?.on("broadcastMessage") { args in
                if let name = args?[0] as? String, let message = args?[1] as? String {
                    let messageData = "\n\n\(name): \(message)"
                    self?.delegate.didReceiveData(data: messageData as AnyObject)
                }
            }
            
            connection.starting = {
                print("Starting...")
            }
            
            connection.reconnecting = {
                print("Reconnecting...")
            }
            
            connection.connected = {
                print("Connected. Connection ID: \(connection.connectionID!)")
                
            }
            
            connection.reconnected = {
                print("Reconnected. Connection ID: \(connection.connectionID!)")
            }
            
            connection.disconnected = {
                print("Disconnected.")
            }
            
            connection.connectionSlow = { print("Connection slow...") }
            connection.error = { error in
                print("Error: \(error)")
                
                // Here's an example of how to automatically reconnect after a timeout.
                //
                // For example, on the device, if the app is in the background long enough
                // for the SignalR connection to time out, you'll get disconnected/error
                // notifications when the app becomes active again.
                
                if let source = error?["source"] as? String, source == "TimeoutException" {
                    print("Connection timed out. Restarting...")
                    connection.start()
                }
            }
        
       }
    }
}

@objc protocol signalRManagerDelegate {
    
    func didReceiveData(data pdata:AnyObject)
}

