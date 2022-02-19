//
//  main.swift
//  Protocol-Interface
//
//  Created by Macbook Air on 19.02.2022.
//

import Foundation

protocol Running {
    func myRun()
}

class Dog:Running{
    func myRun() {
        print("run")
    }
    
    
    
}
