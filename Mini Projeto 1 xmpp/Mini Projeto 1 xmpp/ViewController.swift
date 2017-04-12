//
//  ViewController.swift
//  Mini Projeto 1 xmpp
//
//  Created by Samantha Correa on 07/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var hostname: UITextField!
    
    var xmppController:XMPPController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func login(_ botao: UIButton) {
        if let user = username.text{
            print("user: \(user) \n")
        }
        if let pass = password.text{
            print("password: \(pass) \n")
        }
        if let host = hostname.text{
            print("hostname: \(host) \n" )
        }
        
        try! self.xmppController = XMPPController(hostName: "api.teewa.com.br",
                                                  userJIDString: "13@ip-172-31-47-155",
                                                  password: "VDMzd0BVNTNyUEA1NS5jb21fWE1QUA==")
        self.xmppController?.connect()
        //print("username: \(user) \n password: \(password.text!) \n hostname: \(hostname.text!)")
        
        performSegue(withIdentifier: "ChatSegue", sender: botao)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}

