//
//  ViewController2.swift
//  NotificationCenter
//
//  Created by Macbook Air on 10.02.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButton(_ sender: Any) {
        
        let person = Kisiler(kisi_ad: "John", kisi_yas: 25)
        NotificationCenter.default.post(name: .notificationName, object: nil, userInfo: ["message":"hello","date":Date(),"obj":person])
        dismiss(animated: true, completion: nil)
        
    }
    
}
