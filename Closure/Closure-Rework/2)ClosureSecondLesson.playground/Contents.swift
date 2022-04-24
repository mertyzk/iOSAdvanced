import UIKit

func kalanNotlar(gecmeNotu : Int , notlar : [Int]) -> [Int] {
    
    var kalanlar : [Int] = []
    for not in notlar{
        if not < gecmeNotu {
            kalanlar.append(not)
        }
    }
    
    return kalanlar
}

let notlar : [Int] = [20,40,60,35,2,35,7,13,66,71,99,100]
let kalanlar = kalanNotlar(gecmeNotu: 60, notlar: notlar)
print(kalanlar)

//closure

func kalanNotlarClosure(islem : (Int) -> Bool , notlar : [Int]) -> [Int] {
    var kalanlar : [Int] = [Int]()
    for not in notlar {
        if islem(not) {
            kalanlar.append(not)
        }
    }
    return kalanlar
}

let kalanlar2 = kalanNotlarClosure(islem: { notDegeri in
    return notDegeri < 70
}, notlar: notlar)

print(kalanlar2)


func asalKontrol(sayi : Int) -> Bool {
    guard sayi != 2 else { return true }
    for i in (2...sayi-1){
        if sayi % i == 0 {
            return false
        }
    }
    return true
}

let asallar = kalanNotlarClosure(islem: asalKontrol, notlar: notlar)
print(asallar)


// fonksiyonu değişkene aktarma

func mesajGoster(mesaj : String){
    print("bir mesaj var : \(mesaj)")
}

mesajGoster(mesaj: "Hava durumu")
var f1 = mesajGoster
f1("Hava güneşli")

func ortalama(_ s1: Double , _ s2 : Double) -> Double{
    return (s1 + s2) / 2
}

let ort1 : Double = ortalama(5 , 7)
print(ort1)
let f2 : (Double , Double) -> Double = ortalama
let ort2 : Double = f2(5 , 7)



// Değer döndürmeyen yapılarda uygulama

func kontrol(_ sayi: Int){
    if sayi % 2 == 0{
        print("sayı çifttir")
    } else {
        print("sayı tektir")
    }
}

kontrol(5)

let f3 : (Int) -> () = kontrol
let f4 : (Int) -> Void = kontrol
let f5 = kontrol

f3(3)
f4(4)
f5(5)
