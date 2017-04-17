//
//  ChatViewController.swift
//  Mini Projeto 1 xmpp
//
//  Created by Samantha Correa on 11/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var remetente: UITextField!
    @IBOutlet weak var mensagens_enviadas: UILabel!
    @IBOutlet weak var mensagem_digitada: UITextField!
    
    @IBAction func botaoEnviar(_ sender: Any) {
        print("remetente: " + remetente.text!)
        print("mensagens enviadas: " + mensagens_enviadas.text!)
        print("mensagem digitada: " + mensagem_digitada.text!)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
