//
//  CompatAlert.swift
//  CompatAlert
//
//  Created by AaoIi on 1/5/16.
//  Copyright © 2016 Saad Albasha. All rights reserved.
//

import UIKit

class CompatAlert: NSObject,UIAlertViewDelegate {

    // create singleton instance
    static let instance = CompatAlert()
    
    private override init() {
        super.init()
    }
    
    
    // showAlert will check if the iOS version is 8 and up or 7 and show AlertController for iOS 8 and up,Also if its iOS 7 it will show AlertView..
    
    func showAlert(title:String,message:String,buttonTitleYes:String,buttonTitleCancel:String,controller:UIViewController,tag:Int){
        
        if #available(iOS 8, *) {
            // IOS 8 and up
            
            if buttonTitleYes == "" {
                // without action only cancel
                let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: buttonTitleCancel, style: UIAlertActionStyle.Cancel, handler: nil))
                controller.presentViewController(alert, animated: true, completion: nil)
                
            }else {
                // with action
                let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: buttonTitleCancel, style: UIAlertActionStyle.Cancel, handler: nil))
                alert.addAction(UIAlertAction(title: buttonTitleYes, style: UIAlertActionStyle.Default, handler: checkTagAndReturnAction(tag)))
                controller.presentViewController(alert, animated: true, completion: nil)
                
            }
 
            
        }else {
            //IOS 7
            if buttonTitleYes == "" {
                //without action only cancel
                let alert = UIAlertView(title: title, message: message, delegate: self, cancelButtonTitle: buttonTitleCancel)
                alert.show()
                
                
            }else {
                // with action
                let alert = UIAlertView(title: title, message: message, delegate: self, cancelButtonTitle: buttonTitleCancel, otherButtonTitles: buttonTitleYes)
                alert.tag = tag
                alert.show()
            }
            
        }
        
    }
    
    // IOS 8 and up alert action
    
    @available(iOS 8.0, *)
    func checkTagAndReturnAction(tag: Int) -> ((UIAlertAction) -> (Void)){
        
        // activited only when buttonTitleYes not empty
        switch (tag) {
        case 0:
            return { (UIAlertAction) -> Void in
                print("No internet Connection-AlertController")
            }
            
        default:
            return { (UIAlertAction) -> Void in
                print("default")
            }
        }

    }
    
    // IOS 7 and up action
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        
        // activited only when buttonTitleYes not empty
        if buttonIndex == 1 {
            
            switch (alertView.tag) {
            case 0:
                print("No internet Connection-AlertView")
                break;
                
            default:
                print("default")
                break;
            }
        }
        
        
    }

    
}
