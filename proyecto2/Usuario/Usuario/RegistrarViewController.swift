//
//  RegistrarViewController.swift
//  Usuario
//
//  Created by Laboratorio UNAM-Apple 04 on 19/10/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class RegistrarViewController: UIViewController {

    
    @IBOutlet weak var nomusuario: UITextField!
    
    @IBOutlet weak var conusuario: UITextField!
    
    @IBOutlet weak var confconusuario: UITextField!
    
    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func regButton(_ sender: Any) {
        let usuario = nomusuario.text;
        let passw = conusuario.text;
        let confirmar = confconusuario.text;
        
        if((usuario?.isEmpty)! || (passw?.isEmpty)! || (confirmar?.isEmpty)!)
        {
            etiqueta.text = "Debes llenar los campos"
            return;
        }
        if(passw != confirmar)
        {
            etiqueta.text = "Las contraseñas no coinciden"
            return;
        }
        UserDefaults.standard.set(usuario, forKey: "usuario")
        UserDefaults.standard.set(passw, forKey: "passw")
        UserDefaults.standard.synchronize()
        
        self.dismiss(animated: true, completion: nil)
    }
    

}
