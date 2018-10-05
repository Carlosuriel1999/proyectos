//
//  Cuenta.swift
//  ProyectoRopa
//
//  Created by Laboratorio UNAM-Apple 16 on 04/10/18.
//  Copyright © 2018 Agustin. All rights reserved.
//

import UIKit

class Cuenta: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TotalC: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TotalC.text = "Total a pagar: $\(String(cuentaT))"
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaProducto.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellI = "celdaC"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellI, for: indexPath) as! TableVCell
        
        cell.textLabel?.text = listaProducto[indexPath.row].nombres
        cell.Cant.text = String (listaProducto[indexPath.row].cantidad)
        cell.Pre.text = "$\(String(listaProducto[indexPath.row].precioT))"
        
        return cell
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
