//
//  ViewController.swift
//  ErrorHandlingForLoginApplication
//
//  Created by Macbook Air on 27.04.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    enum OturumHatasi : Error{
        case doldurulmayanAlanlar
        case parolaFormatiGecersiz
        case emailFormatiGecersiz
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func loginButton(_ sender: UIButton) {
        
        do {
            try oturumAcma()
            
            mesajVer(baslik: "Başarılı", icreik: "Oturum açma işlemi başarılıdır.")
        } catch OturumHatasi.doldurulmayanAlanlar {
            mesajVer(baslik: "Doldurulmayan alanlar", icreik: "Hiçbir alanı boş bırakmayın")
        } catch OturumHatasi.emailFormatiGecersiz {
            mesajVer(baslik: "E-posta geçersiz", icreik: "E-posta kontrol edin")
        } catch OturumHatasi.parolaFormatiGecersiz{
            mesajVer(baslik: "Parolanızı kontrol edin", icreik: "En az 8 karakter ve büyük harf küçük harf içermelidir.")
        } catch let bilinmeyenHata {
            mesajVer(baslik: "Bilinmeyen hata", icreik: "Bu hatanın sebebi bilinmiyor." + bilinmeyenHata.localizedDescription)
        }
        
        
    }
    
    
    func oturumAcma() throws {
        
        let eMail = emailTextField.text!
        let pass = passwordTextField.text!
        
        if eMail.isEmpty || pass.isEmpty {
            throw OturumHatasi.doldurulmayanAlanlar
        }
        
        if eMail.mailFormatKontrol == false {
            throw OturumHatasi.emailFormatiGecersiz
        }
        
        if pass.parolaFormatKontrol == false {
            throw OturumHatasi.parolaFormatiGecersiz
        }
        
    }
    
    func mesajVer(baslik : String , icreik : String){
        let alert = UIAlertController(title: baslik, message: icreik, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(action)
        self.present(alert,animated: true,completion: nil)
        
    }
    
    
}

extension String {
    
    var mailFormatKontrol : Bool{
        
        let emailFormat : String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        let sonuc : Bool = predicate.evaluate(with: self)
        return sonuc
    }
    
    var parolaFormatKontrol : Bool {
        
        let parolaFormat = "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", parolaFormat)
        let sonuc = predicate.evaluate(with: self)
        return sonuc
    }
    
}


