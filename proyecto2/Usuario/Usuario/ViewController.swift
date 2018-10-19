//
//  ViewController.swift
//  Usuario
//
//  Created by Laboratorio UNAM-Apple 04 on 19/10/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        let logged = UserDefaults.standard.bool(forKey: "logged");
        if(!logged)
        {
            self.performSegue(withIdentifier: "loginview", sender: self)
            
        }
    }
    
    @IBAction func Cerrar(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "logged")
        UserDefaults.standard.synchronize()
        self.performSegue(withIdentifier: "loginview", sender: self)
    }
    

}

