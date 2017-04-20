//
//  File.swift
//  Signos
//
//  Created by Samantha Correa on 19/04/17.
//  Copyright © 2017 Teewa. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Caprincórnio")
        signos.append("Áquario")
        signos.append("Peixes")
        
        significadoSignos.append("O ariano...")
        significadoSignos.append("O touriano...")
        significadoSignos.append("O geminiano...")
        significadoSignos.append("O canceriano...")
        significadoSignos.append("O leonino...")
        significadoSignos.append("O virginiano...")
        significadoSignos.append("O libriano...")
        significadoSignos.append("O escorpião...")
        significadoSignos.append("O sagitariano...")
        significadoSignos.append("O capricorniano...")
        significadoSignos.append("O aquariano...")
        significadoSignos.append("O peixes...")
        
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
        return signos.count
    }
    
    //esse método monta cada linha de uma tabela
    //retorna uma célula
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaR = "celulaReuso"
        //esse metodo reusable decide se vai ser criada uma nova célula ou se vai ser reusada | o indexPath identifica em qual linha está sendo feito esse processamento
        //isso faz com que o carregamento da tabela seja muito mais rápido
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaR, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //efeito de clique para desmarcar elemento de uma lista
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alerta = UIAlertController(title: "Significado do Signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "ok", style: .default, handler: nil)
        alerta.addAction(confirmar)
        present(alerta, animated: true, completion: nil)
    }
    
}
