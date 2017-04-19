//
//  ViewController.swift
//  Alerta
//
//  Created by Samantha Correa on 18/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //criação de pop-up
    @IBAction func abrirAlerta(_ sender: Any) {
        let alertaController = UIAlertController(title: "Adicionar Contato", message: "Deseja adicionar o contato?", preferredStyle: .actionSheet)
        
        let confirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        let cancelar = UIAlertAction(title: "cancel", style: .destructive, handler: nil)

        alertaController.addAction(confirmar)
        alertaController.addAction(cancelar)
        present(alertaController, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

