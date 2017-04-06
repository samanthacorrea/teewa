//
//  ViewController.swift
//  Gerador de Numeros
//
//  Created by Samantha Correa on 06/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var legendaResultado: UILabel!
    @IBAction func botaoGerarNumero(_ sender: Any) {
                
        //calcular um número randômico através de alguma função
        var numeroAleatorio = arc4random_uniform(11)
        
        //legendaResultado.text = valor
        legendaResultado.text = String(numeroAleatorio)
        
    }

}

