//
//  IniciarViewController.swift
//  Usuario
//
//  Created by Laboratorio UNAM-Apple 04 on 19/10/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class IniciarViewController: UIViewController {

    @IBOutlet weak var nomusuario: UITextField!
    
    @IBOutlet weak var conusuario: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func iniciars(_ sender: Any) {
        
        let usuario = nomusuario.text;
        let passw = conusuario.text;
        
        let usuarioG = UserDefaults.standard.string(forKey: "usuario")
        let passwG = UserDefaults.standard.string(forKey: "passw")
        if (usuarioG == usuario)
        {
            if(passwG == passw)
            {
                UserDefaults.standard.set(true, forKey: "logged")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
 

}
