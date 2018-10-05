//
//  TableViewController.swift
//  CP
//
//  Created by Macbook on 03/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

var ropa = ["TENIS","PANTALON","CAMISA","CHALECO"]
var descripcion = ["Tenis de tamaño 6-9 de color negro adidas ","Pantalon vaquero de color azul ","Camisa Lcc105 color negro mediana","Chaleco de trabajo clasico termico"]
var precio = ["$1,200.00","$450.00","$220.00","$500.00"]
var myIndex = 0

class TableViewController: UITableViewController {

    

    // MARK: - Table view data source
     /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return ropa.count
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ropa.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = ropa[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }


}
