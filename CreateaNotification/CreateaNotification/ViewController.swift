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
        
        UNUserNotificationCenter.current().delegate = self
        
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

    @IBAction func createNotificationButton(_ sender: Any) {
        
        if permission{
            let content = UNMutableNotificationContent()
            content.title = "Title"
            content.subtitle = "Subtitle"
            content.body = "Message"
            content.badge = 1
            content.sound = UNNotificationSound.default
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
            
            let notificationRequest = UNNotificationRequest(identifier: "AnyId", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(notificationRequest, withCompletionHandler: nil)
            
            
            
        }
        
    }
    
}

extension ViewController:UNUserNotificationCenterDelegate{

    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler([.banner,.sound,.badge])
        
    }
    
    
}

