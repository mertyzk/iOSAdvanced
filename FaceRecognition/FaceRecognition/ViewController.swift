//
//  ViewController.swift
//  FaceRecognition
//
//  Created by Macbook Air on 17.02.2022.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func scanFaceButtpn(_ sender: Any) {
        
        let authContext = LAContext()
        
        var error:NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Is it you?") { success, error in
                
                if success == true{
                    // success auth
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "toVC", sender: nil)
                    }
                    
                    
                }else{
                    DispatchQueue.main.async {
                        self.resultLabel.text = "ERROR!"
                    }
                    
                }
                            
            }
        }
        
        
        
    }
    
}

