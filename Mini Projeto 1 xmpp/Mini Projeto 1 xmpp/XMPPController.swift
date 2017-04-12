//
//  XMPPController.swift
//  Mini Projeto 1 xmpp
//
//  Created by Samantha Correa on 11/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import Foundation
import XMPPFramework

enum XMPPControllerError: Error {
    case wrongUserJID
}

class XMPPController: NSObject, XMPPStreamDelegate {
    var xmppStream: XMPPStream
    
    let hostName: String
    let userJID: XMPPJID
    let hostPort: UInt16
    let password: String
    
    
    init(hostName: String, userJIDString: String, hostPort: UInt16 = 5222, password: String) throws {
        guard let userJID = XMPPJID(string: userJIDString) else {
            throw XMPPControllerError.wrongUserJID
        }
        
        self.hostName = hostName
        self.userJID = userJID
        self.hostPort = hostPort
        self.password = password
        
        // Stream Configuration
        self.xmppStream = XMPPStream()
        self.xmppStream.hostName = hostName
        self.xmppStream.hostPort = hostPort
        self.xmppStream.startTLSPolicy = XMPPStreamStartTLSPolicy.allowed
        self.xmppStream.myJID = userJID
        
        super.init()
        
        self.xmppStream.addDelegate(self, delegateQueue: DispatchQueue.main)
    }
    
    func connect() {
        print("connect()")
        if self.xmppStream.isConnected(){
            print("ja conetou. ")
            return
        }else{
            print("tentando conetar. ")

            do{
                try xmppStream.connect(withTimeout: XMPPStreamTimeoutNone)
            }catch _ {
                print("Voce ja esta conectado...")
            }
            
            
        }
    }
    
    func xmppStreamDidConnect(_ sender: XMPPStream!) {
        print("Stream: Connected")
        
        do{
            try self.xmppStream.authenticate(withPassword: self.password)
        }catch _ {
            print("Voce ja esta autenticado.")
        }
        
    }
    
    func xmppStreamDidAuthenticate(_ sender: XMPPStream!) {
        print("Stream: Authenticated")
        
        let presence = XMPPPresence()
        self.xmppStream.send(presence)
    }
    
}
