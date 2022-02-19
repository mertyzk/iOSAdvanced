//
//  MusicianStruct.swift
//  Struct
//
//  Created by Macbook Air on 19.02.2022.
//

import Foundation

struct MusicianStruct {
    var name:String
    var age:Int
    var instrument:String
    
    mutating func happyBirthday(){
        self.age += 1
    }
}
