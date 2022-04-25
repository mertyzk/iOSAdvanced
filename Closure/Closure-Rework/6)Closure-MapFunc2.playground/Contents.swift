import UIKit

var toplamKarakterSayisi : Int = 0

func ksBul(_ isim : String) -> Int {
    toplamKarakterSayisi += isim.count
    return isim.count
}

var isimler : [String] = ["Ahmet","Mehmet","Ali","Veli","Kaan"]
var karakterSayilar = isimler.map(ksBul)
print(karakterSayilar)
print(toplamKarakterSayisi)

// başka yöntem

toplamKarakterSayisi = 0
karakterSayilar = isimler.map{
    toplamKarakterSayisi += $0.count
    return $0.count
}
print(karakterSayilar)
print(toplamKarakterSayisi)


print("*******************************")


// SÖZLÜK YAPISINDA MAP

var kitapFiyatlar : [String : Int] = ["Çalıkuşu" : 35, "İki şehrin hikayesi" : 50, "Suç ve ceza" : 30, "Kumarbaz" : 35, "Monte kristo kontu" : 80]

var kitapAdlar = kitapFiyatlar.map { (key , value ) in
    return key.uppercased()
}

print(kitapAdlar)

var yeniKitapFiyatlar = kitapFiyatlar.map { (key: String, value: Int) in
    return [key.capitalized : value + 20]
}
print(yeniKitapFiyatlar)

print("*******************************")


// SET YAPISINDA MAP


let cmUzunluklar : Set<Double> = [5,6,10,20,10]
let inchUzunluklar = cmUzunluklar.map { cm in cm * 2.54}
print(inchUzunluklar)


print("*******************************")

// STRUCT MAP İLİŞKİSİ


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

var kisiAdlari = k1.map { Kisi -> String in
    return Kisi.adi
}

print(kisiAdlari)
