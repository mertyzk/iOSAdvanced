//
//  main.swift
//  Struct
//
//  Created by Macbook Air on 19.02.2022.
//

import Foundation

let classJames = MusicianClass(name: "James", age: 50, instrument: "Guitar")
//print(classJames.age)

var structJames = MusicianStruct(name: "Test", age: 33, instrument: "Piano")
//print(structJames.age)

// IMMUTABLE STRUCT

classJames.age = 51
//print(classJames.age)

structJames.age = 35
//print(structJames.age)


// REFERENCE VS VALUE

let copyOfClassJames = classJames
var copyOfStructJames = structJames

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

copyOfClassJames.age = 52
copyOfStructJames.age = 52

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

//print(classJames.age)
//print(structJames.age)


// FUNCTION VS MUTATING FUNCTION

/*print(classJames.age)
classJames.happyBirthday()
print(classJames.age)*/

/*print(structJames.age)
structJames.happyBirthday()
print(structJames.age)*/

// TUPLE

/*let myTuple = (1,3)
print(myTuple.0)

let myTuple2 = (1,3,5)
print(myTuple2.2 )

let myTuple3 = (10,[10,20,30])
print(myTuple3.1[1])*/


// GUARD LET

/*let myNumber = "5"
func convertToIntegerGuard (stringInput:String)->Int{
    guard let myInteger = Int(stringInput) else{
        return 0
    }
    return myInteger
}

func convertToIntegerIf(stringInput:String)->Int{
    if let myInteger = Int(stringInput){
        return myInteger
    }else{
        return 0
    }
}*/

// BREAKPOİNT

var x = 5
print(x)
x += 1
print(x)
