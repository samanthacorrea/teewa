//
//  ViewController.swift
//  Idade de Cachorro
//
//  Created by Samantha Correa on 05/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //capturar entrada
        
        //capturar clique
    }
    
    @IBOutlet weak var campoIdadeCachorro: UITextField! //referência ao invés de action
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
        var idadeCachorro = Int(campoIdadeCachorro.text!)!
        idadeCachorro = idadeCachorro * 7
        
        resultado.text = "A idade do cachorro é " + String(idadeCachorro)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

