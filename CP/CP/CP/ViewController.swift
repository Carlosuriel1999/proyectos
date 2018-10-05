//
//  ViewController.swift
//  CP
//
//  Created by Macbook on 03/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Titulo: UILabel!

    @IBOutlet weak var Imagen: UIImageView!
    
    @IBOutlet weak var Desc: UILabel!
    
    @IBOutlet weak var precio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Titulo.text = ropa[myIndex]
        Desc.text = descripcion[myIndex]
      //  precio.text = precio[myIndex]
        Imagen.image = UIImage(named: ropa[myIndex] + ".jpeg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

