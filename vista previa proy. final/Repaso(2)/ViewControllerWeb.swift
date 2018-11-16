//
//  ViewControllerWeb.swift
//  Repaso(2)
//
//  Created by Laboratorio UNAM-Apple on 15/11/18.
//  Copyright © 2018 B&V. All rights reserved.
//

import UIKit

class ViewControllerWeb: UIViewController {
    
    @IBOutlet weak var miWeb: UIWebView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://www.sciencemag.org/")
        
        miWeb.loadRequest(URLRequest(url: url!))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
