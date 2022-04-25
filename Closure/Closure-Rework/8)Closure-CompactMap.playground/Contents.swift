import UIKit

// sadece string ifadeleri almak istiyoruz, nil ifadeleri almak istemiyoruz
let isimler : [String?] = ["Ayşe","Fatih",nil,"Kamil",nil,"Fuat"] // hem string hem de optional ifade var (nil optional)
let gercekIsimler = isimler.compactMap {$0}
    print(gercekIsimler)

// sadece Int'e dönüştürülebilenleri almak istiyoruz
let karisikSayilar = ["bir","2","3","dört","beş","6"]
let gercekSayilar = karisikSayilar.compactMap{Int($0)}
print(gercekSayilar)

struct Person{
    let cars : [String]?
    let name : String
    let surname : String
    let age : Int
}

let p1 = Person(cars: nil, name: "name", surname: "ali", age: 19)
let p2 = Person(cars: ["audi","ford"], name: "kaan", surname: "eren", age: 28)
let p3 = Person(cars: ["Fiat","Mercedes","Bmw"], name: "Fatih", surname: "Günsu", age: 62)

let people = [p1,p2,p3]

let compactCars = people.compactMap {$0.cars}
print(compactCars)

let compactFlatCars = people.compactMap{$0.cars}.flatMap{$0}
print(compactFlatCars)
