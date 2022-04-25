import UIKit

var sayilar = [10, 15, 20, 25, 30, 35, 40]

var degerler = sayilar.map { sayi -> Int? in
    if sayi % 10 == 0 {
        return sayi
    } else {
        return nil
    }
}

print(degerler)


var yeniDegerler : [Int] = sayilar.flatMap { sayi in
    if sayi % 10 == 0 {
        return sayi
    } else {
        return nil
    }
}

print(yeniDegerler)

// ----------------------

print("------------------------------")

enum MedeniHali : String{
    case Evli
    case Bekar
}

struct Kisi {
    var adi : String
    var soyadi : String
    var yasi : Int
    var medeniHali : MedeniHali
    var maasi : Int
}

var k1 : [Kisi] = [Kisi]()

k1.append(Kisi(adi: "Ayşe", soyadi: "Fatma", yasi: 19, medeniHali: .Bekar, maasi: 4500))
k1.append(Kisi(adi: "Ali", soyadi: "Çeltik", yasi: 22, medeniHali: .Evli, maasi: 6500))
k1.append(Kisi(adi: "Kaan", soyadi: "Gören", yasi: 27, medeniHali: .Evli, maasi: 9500))


var evliler : [String] = k1.flatMap {
    if $0.medeniHali == MedeniHali.Evli {
        return "\($0.adi) \($0.soyadi)"
    } else {
        return nil
    }
}

print(evliler)


// ----------------------

print("------------------------------")

var sehirler : [String : Int] = ["İstanbul" : 18 , "İzmir" : 4, "Ankara" : 6, "Rize" : 1] // nüfuslar
var kalabalikSehirler : [String] = sehirler.flatMap { sehir in
    if sehir.value >= 5 {
        return sehir.key
    } else {
        return nil
    }
}

print(kalabalikSehirler)

// ----------------------

print("------------------------------")

let sayiDizisi : [Double] = [20, 30, 15, 40, -10, 20, 15, 40]
var toplam : Double = 0

sayiDizisi.map {
    toplam += $0
}
print(toplam)

let ortalama : Double = toplam / (Double(sayiDizisi.count))
print(ortalama)

let ortalamaAltindakiler : [Double] = sayiDizisi.flatMap { sayi in
    if sayi < ortalama {
        return sayi
    } else {
        return nil
    }
}

print(ortalamaAltindakiler)

// ----------------------

print("------------------------------")

let icIceDizi = [[4, 6, 9] , [3, 4, 2] , [15, 15, 20, 25]]
print(icIceDizi)
let tumSayilar = icIceDizi.flatMap { $0 }
print(tumSayilar)
