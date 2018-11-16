//
//  ViewController.swift
//  Repaso(2)
//
//  Created by Laboratorio UNAM-Apple on 15/11/18.
//  Copyright © 2018 B&V. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var constraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openMenu(_ sender: Any) {
        if menuShowing {
            
            constraint.constant = -140
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
            
        } else {
            constraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {self.view.layoutIfNeeded()})
        }
        
        menuShowing = !menuShowing
        
    }
    
}

