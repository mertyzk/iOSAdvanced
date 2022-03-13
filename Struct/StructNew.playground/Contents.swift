import UIKit

// LAPTOP

struct Laptop {
    var brand : String
    var model : String
    var cpu : String
    var ram : String
    var displayCard : String
    var screenSize : String
    var price : Double
}

var laptop1 : Laptop = Laptop(brand: "Apple", model: "Macbook Air", cpu: "M1", ram: "8GB", displayCard: "Internal", screenSize: "13", price: 12.500)
var laptop2 : Laptop = Laptop(brand: "Toshiba", model: "Satellite", cpu: "Intel i7", ram: "16GB", displayCard: "GT740M", screenSize: "17.3'", price: 5.500)
print(laptop1.brand)
print(laptop2.model)

func comparison(l1 : Laptop, l2: Laptop){
    
    var comparisonResult = (pointLaptop1 : 0 , pointLaptop2: 0)
    
    if l1.price > l2.price{
        comparisonResult.pointLaptop1 += 1
    }else{
        comparisonResult.pointLaptop2 += 1
    }
    
    if comparisonResult.pointLaptop1 > comparisonResult.pointLaptop2{
        print(laptop1)
    }
}

comparison(l1: laptop1, l2: laptop2)
