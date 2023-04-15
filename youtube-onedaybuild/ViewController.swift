//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Duncan Gichuru on 2023-04-15.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
         
    }


}

