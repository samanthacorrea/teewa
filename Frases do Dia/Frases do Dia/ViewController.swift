//
//  ViewController.swift
//  Frases do Dia
//
//  Created by Samantha Correa on 12/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var legenda: UILabel!
    
    @IBAction func geraFrase(_ sender: Any) {
        
        var frases: [String] = []
        var random = arc4random_uniform(5)
        
        frases.append("Frase 1")
        frases.append("Frase 2")
        frases.append("Frase 3")
        frases.append("Frase 4")
        frases.append("Frase 5")
        
        legenda.text = frases[Int(random)]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

