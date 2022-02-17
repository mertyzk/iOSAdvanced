//
//  ViewController.swift
//  DarkMode
//
//  Created by Macbook Air on 17.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark // kullanıcının telefonundaki ayara bakmadan, buradaki .dark atamasına çevirecektir."
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        // kullanım esnasında user ayarlardan light / dart mod değiştirirse uygulamada birşey görünmez
        // bu yüzden ios lifecycle metodlarından viewWillAppear kullanmalıyız
        // kullanıcının dark mode'dan light mode'a geçtiğini tespit edip anlık çalıştırmak için traitCollectionDidChange metodunu kullanırız.
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark{
            changeButtonOutlet.tintColor = UIColor.white
        }else{
            changeButtonOutlet.tintColor = UIColor.green
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark{
            changeButtonOutlet.tintColor = UIColor.white
        }else{
            changeButtonOutlet.tintColor = UIColor.green
        }
    }


}

