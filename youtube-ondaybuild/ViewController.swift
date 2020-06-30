//
//  ViewController.swift
//  youtube-ondaybuild
//
//  Created by Siqiao Li on 30/6/20.
//  Copyright © 2020 Siqiao Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideo()
        
    }


}

