//
//  MusicianClass.swift
//  Struct
//
//  Created by Macbook Air on 19.02.2022.
//

import Foundation

class MusicianClass{
    var name:String
    var age:Int
    var instrument: String
    
    init(name:String, age:Int, instrument:String) {
        self.name = name
        self.age = age
        self.instrument = instrument
    }
    
    func happyBirthday(){
        self.age += 1
    }
}
