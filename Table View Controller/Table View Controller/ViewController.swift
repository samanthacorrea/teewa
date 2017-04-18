//
//  ViewController.swift
//  Table View Controller
//
//  Created by Samantha Correa on 18/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var dados: [String] = ["Lasanha", "Pizza", "Torta"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //exibir dados dentro da table view controller
    //retorna a quantidade de sections nessa table view
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    //retorna quantas linhas serão exibidas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }
    
    //esse método monta cada linha de uma tabela
    //retorna uma célula
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaR = "celulaReuso"
        //esse metodo reusable decide se vai ser criada uma nova célula ou se vai ser reusada | o indexPath identifica em qual linha está sendo feito esse processamento
        //isso faz com que o carregamento da tabela seja muito mais rápido
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaR, for: indexPath)
        celula.textLabel?.text = dados[indexPath.row]
        
        return celula
    }
    
    
}

