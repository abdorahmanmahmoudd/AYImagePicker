//
//  ViewController.swift
//  AYImagePicker
//
//  Created by abdorahmanmahmoudd on 03/14/2018.
//  Copyright (c) 2018 abdorahmanmahmoudd. All rights reserved.
//

import UIKit
import AYImagePicker

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPickClicked(_ sender: UIButton) {
        
        let cam = AYImagePicker()
        if let picker = cam.instance{
            self.present(picker, animated: true, completion: nil)
        }
    }
}

