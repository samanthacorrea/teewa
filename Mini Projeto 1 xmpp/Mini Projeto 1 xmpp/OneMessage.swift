//
//  oneMessage.swift
//  Mini Projeto 1 xmpp
//
//  Created by Samantha Correa on 12/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import Foundation
import XMPPFramework

public protocol OneMessageDelegate: NSObjectProtocol {
    
    func callBackMessage (didReceiveMessage message:  XMPPMessage)
    
}

public class OneMessage: NSObject, XMPPStreamDelegate {
    public weak var delegate: OneMessageDelegate?
    
    public class var sharedInstance: OneMessage{
        struct OneMessageSingleton { //cria a instancia uma unica vez
            static let instance = OneMessage()
        }
        return OneMessageSingleton.instance
    }
    
    public class func sendMessage(body: String){
        
    }
    
    
    public func xmppStream(_ sender: XMPPStream!, didReceive message: XMPPMessage!) { //novas mensagens
        
    }
    
}
