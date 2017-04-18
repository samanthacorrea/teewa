//
//  DetalhesViewController.swift
//  Passando dados entre views
//
//  Created by Samantha Correa on 18/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import Foundation
import UIKit

class DetalhesViewController: UIViewController {
    
    var textoRecebido: String!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultado.text = textoRecebido
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
