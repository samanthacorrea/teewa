//
//  OneConnection.swift
//  Mini Projeto 1 xmpp
//
//  Created by Samantha Correa on 12/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import Foundation
import XMPPFramework

public protocol OneConnectionDelegate: NSObjectProtocol{
    func callBackConnected()
    func callBackAuthenticate()
    
}

public class OneConnection: NSObject {
    var xmppStream: XMPPStream?
    
    var hostName: String?
    var userJID: XMPPJID?
    var hostPort: UInt16?
    var password: String?
    
    
    public class var sharedInstance: OneConnection{
        struct OneConnectionSingleton { //cria a instancia uma unica vez
            static let instance = OneConnection()
        }
        return OneConnectionSingleton.instance
    }

    
    //funcao para iniciar o servico
    public func  setupStream(hostName: String, userJIDString: String, hostPort: UInt16 = 5222, password: String) throws {
        guard let userJID = XMPPJID(string: userJIDString) else {
            throw XMPPControllerError.wrongUserJID
        }
        
        self.hostName = hostName
        self.userJID = userJID
        self.hostPort = hostPort
        self.password = password
        
        // Stream Configuration
        self.xmppStream = XMPPStream()
        self.xmppStream?.hostName = hostName
        self.xmppStream?.hostPort = hostPort
        self.xmppStream?.startTLSPolicy = XMPPStreamStartTLSPolicy.allowed
        self.xmppStream?.myJID = userJID
        
        
        self.xmppStream?.addDelegate(self, delegateQueue: DispatchQueue.main)
    }
    
    func connect() {
        print("connect()")
        if (self.xmppStream?.isConnected())!{
            print("ja conetou. ")
            return
        }else{
            print("tentando conetar. ")
            
            do{
                try xmppStream?.connect(withTimeout: XMPPStreamTimeoutNone)
            }catch _ {
                print("Voce ja esta conectado...")
            }
            
            
        }
    }
    
    public class func start() {
        try! sharedInstance.setupStream(hostName: "api.teewa.com.br", userJIDString: "13@ip-172-31-47-155", password: "VDMzd0BVNTNyUEA1NS5jb21fWE1QUA==")
    }
}
