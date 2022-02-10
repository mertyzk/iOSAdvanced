//
//  ViewController.swift
//  BackgroundModesSound
//
//  Created by Macbook Air on 10.02.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var soundPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let filePath = Bundle.main.path(forResource: "music", ofType: ".mp3")
            soundPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: filePath!))
            soundPlayer.prepareToPlay()
        }catch{
            print(error.localizedDescription)
        }
        
        
    }

    @IBAction func startButton(_ sender: Any) {
        soundPlayer.play()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        soundPlayer.stop()
    }
    
    
}

