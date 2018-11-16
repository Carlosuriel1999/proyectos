//
//  ViewControllerMapa.swift
//  Repaso(2)
//
//  Created by Laboratorio UNAM-Apple on 15/11/18.
//  Copyright © 2018 B&V. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerMapa: UIViewController {
    
    @IBOutlet weak var mapa: MKMapView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //latitud: 52.3750066
        //longitud: 4.8837106
        mapa.mapType = .standard
        
        let location = CLLocationCoordinate2DMake(52.3750066, 4.8837106)
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Amsterdam, yeah!"
        annotation.subtitle = "Sitio para visitar"
        
        let span  = MKCoordinateSpanMake(0.0002, 0.0002)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapa.setRegion(region, animated: true)
        mapa.addAnnotation(annotation)
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
