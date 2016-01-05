//
//  ViewController.swift
//  CompatAlert
//
//  Created by AaoIi on 1/5/16.
//  Copyright © 2016 Saad Albasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    @IBAction func alertWithoutAction(sender: AnyObject) {

        CompatAlert.instance.showAlert("Sorry", message: "This is just a simple message !", buttonTitleYes: "", buttonTitleCancel: "OK", controller: self, tag: 0)
        
    }
    
    @IBAction func alertWithAction(sender: AnyObject) {
        
        CompatAlert.instance.showAlert("Sorry", message: "Please check your internet connection!", buttonTitleYes: "Retry", buttonTitleCancel: "Dismiss", controller: self, tag: 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

