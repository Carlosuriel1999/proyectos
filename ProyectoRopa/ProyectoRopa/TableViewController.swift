//
//  TableViewController.swift
//  ProyectoRopa
//
//  Created by Laboratorio UNAM-Apple 16 on 04/10/18.
//  Copyright © 2018 Agustin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.clearsSelectionOnViewWillAppear = false
      

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Ropa.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCell
        cell.textLabel?.text = Ropa[indexPath.row].nombre
        cell.imageView?.image = UIImage(named: Ropa[indexPath.row].imagen)
        cell.label.text = ("$\(Ropa[indexPath.row].costo)")
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "detalle"{
            if let indexPath = tableView.indexPathForSelectedRow{
                _ = segue.destination as! DViewController
                myIndex = indexPath.row
            }
        }
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
