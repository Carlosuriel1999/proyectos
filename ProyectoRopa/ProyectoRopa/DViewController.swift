//
//  DViewController.swift
//  ProyectoRopa
//
//  Created by Laboratorio UNAM-Apple 04 on 05/10/18.
//  Copyright © 2018 Agustin. All rights reserved.
//

import UIKit

class DViewController: UIViewController {

    @IBOutlet weak var Titulo: UILabel!
    
    @IBOutlet weak var Imagen: UIImageView!
    
    @IBOutlet weak var Desc: UILabel!
    
    @IBOutlet weak var Cantidad: UITextField!
    
    var precio: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Titulo.text = Ropa[myIndex].nombre
        Imagen.image = UIImage(named: Ropa[myIndex].imagen)
        Desc.text = Ropa[myIndex].desc
        
        Imagen.image = UIImage(named: Ropa[myIndex].imagen)
        Imagen.layer.cornerRadius = 50
        Imagen.layer.borderColor = UIColor.black.cgColor
        Imagen.layer.borderWidth = 4
        Imagen.layer.masksToBounds = true
    }
 
    
    @IBAction func Agregar(_ sender: Any) {
        if Cantidad.text! == ""{
            let optionMenu = UIAlertController(title: "Bienvenido a Ropa Cool", message: "Agregue una cantidad para poder continuar", preferredStyle: .alert)
            let Action = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            optionMenu.addAction(Action)
            present(optionMenu, animated: true, completion: nil)
        }else {
            precio = Double(Cantidad.text!)! * Ropa[myIndex].costo
            
            let optionMenu = UIAlertController(title: "Agregar al carrito", message: "EL precio es: $\(precio)¿deseas continuar?", preferredStyle: .alert)
            
            let YesAc = UIAlertAction(title: "Si", style: .default, handler: {(action: UIAlertAction)-> Void in
                
                cuentaT = cuentaT + self.precio
                
            let newLista = ProductoC(nombres: Ropa[myIndex].nombre, precioT: self.precio, cantidad: Int(self.Cantidad.text!)!)
                listaProducto.append(newLista)
            })
            let NoAc = UIAlertAction(title: "No", style: .cancel, handler: nil)
            optionMenu.addAction(YesAc)
            optionMenu.addAction(NoAc)
            
            present (optionMenu, animated: true, completion: nil)
        }
    }

}
