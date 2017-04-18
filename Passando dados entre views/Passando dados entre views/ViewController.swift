//
//  ViewController.swift
//  Passando dados entre views
//
//  Created by Samantha Correa on 18/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nome: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "passarDadosDetalhes") {
                let destino = segue.destination as! DetalhesViewController
                destino.textoRecebido = nome.text
            
        }
    }
}

