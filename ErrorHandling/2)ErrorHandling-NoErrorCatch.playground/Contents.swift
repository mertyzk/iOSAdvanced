import UIKit

//What happens if there is no error catch? (Hata yakalama olmazsa ne olur?

// enum yapısıyla hata fırlatma yapısını ekleyelim

enum FriendError : Error {
    case invalidData(description : String)
}

struct Friend {
    
    let name : String
    let age : String
    let adress : String?
    
}

func createFriend(from data : [String : String]) throws -> Friend {
    
    guard let name = data["name"] else {
        throw FriendError.invalidData(description: "Ad girilmedi")
    }
    
    guard let age = data["age"] else {
        throw FriendError.invalidData(description: "Yaş girilmedi")
    }
    
    let adress = data["adress"]
    return Friend(name: name, age: age, adress: adress)
    
}

let data : [String : String] = ["name" : "Yasin" , "age" : "18" , "adress" : "Ankara"]

let f1 = try createFriend(from: data)
print(f1)


let data1 : [String : String] = ["name" : "Yasin" , "1age" : "18" , "adress" : "Ankara"]

do {
    let f2 = try createFriend(from: data1)
} catch let error {
    print(error)
}

func sendMessage(message : String , to friend : Friend){}

do{
    let f3 = try createFriend(from: data1)
    sendMessage(message: "Merhaba", to: f3)
} catch FriendError.invalidData(let desc){
    print(desc)
}
