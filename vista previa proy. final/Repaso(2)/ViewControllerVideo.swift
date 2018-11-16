//
//  ViewControllerVideo.swift
//  Repaso(2)
//
//  Created by Laboratorio UNAM-Apple on 15/11/18.
//  Copyright © 2018 B&V. All rights reserved.
//

import UIKit
import AVKit

class ViewControllerVideo: UIViewController {
    
    @IBAction func botonVideo(_ sender: UIButton) {
        
        if let path = Bundle.main.path(forResource: "final", ofType: "mp4") {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            present(videoPlayer, animated: true){
                video.play()
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
