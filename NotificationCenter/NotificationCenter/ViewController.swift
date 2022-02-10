//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Macbook Air on 10.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.make(notification:)), name: .notificationName, object: nil)
        
        
    }
    
     @objc func make(notification:NSNotification){
        let incomingMessage = notification.userInfo?["message"]
        let incomingDate = notification.userInfo?["date"]
        let incomingObj = notification.userInfo?["obj"] as! Kisiler
        
        resultLabel.text = "\(incomingObj.kisi_yas!) - \(incomingDate!) - \(incomingMessage!)"
    }


}

extension Notification.Name{
    static let notificationName = Notification.Name("TTEESSTT")
    
}
