//
//  ViewController.swift
//  tableView
//
//  Created by Macbook on 29/08/18.
//  Copyright © 2018 ServiciosUHB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos = ["Erick", "carlos", "julio", "paco"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count  //pide cuantas celdas
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)      // cuales pinto
        cell.textLabel?.text = alumnos[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("usted seleciono a : \(alumnos[indexPath.row])")
    }
    
    
    
}
