//
//  ViewController.swift
//  CreateaNotification
//
//  Created by Macbook Air on 10.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var permission:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: {(granted,error) in
            
            self.permission = granted
            if granted{
                print("Permission success")
            }
            else{
                print("Permission error")
            }
        })
    }


}

