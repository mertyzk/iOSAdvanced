import UIKit

struct Human{
    
    var hairColor : String
    var eyeColor : String
    var length : Double
    var age : Int
    var gender : Bool // True woman - False man
    var carBrand : String
    
    init(hairColor : String, eyeColor : String, length : Double, age : Int, gender : Bool){
        self.hairColor = hairColor
        self.eyeColor = eyeColor
        self.length = length
        self.age = age
        self.gender = gender
        self.carBrand = String() // null value : ""
        //self.carBrand = "No car"
    }
    
    
    
}

var h1 : Human = Human(hairColor: "Yellow", eyeColor: "Blue", length: 190, age: 27, gender: false)
print(h1)
