import UIKit

// Filter

var sayilar  = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var hayvanlar = ["aslan","kartal","kaplan","ayı"]

let kucukSayiler = sayilar.filter { sayi -> Bool in
    return sayi < 5
}

print(kucukSayiler)

let ciftSayilar = sayilar.filter({return $0 % 2 == 0})
print(ciftSayilar)

var h1 = hayvanlar.filter({return $0.contains("ka") == true})
print(h1)

var h2 = hayvanlar.filter({return $0.count >= 5})
print(h2)


// Sorted

let malzemeler = ["un","domates","salatalık","biber","soğan"]
let m1 = malzemeler.sorted { deger1, deger2 in
    return deger1 < deger2
}
print(m1)

let m2 = malzemeler.sorted() // m1 ile ayni isi yapar
print(m2)

let m3 = malzemeler.sorted{return $0 < $1} // m1 ve m2 ile aynı isi yapar
print(m3)


// karakter sayısına göre sıralayalım
let m4 = malzemeler.sorted{ return $0.count < $1.count}
print(m4)


struct Sarki {
    var sarkiPuani : Int
}

let s1 = Sarki(sarkiPuani: 3)
let s2 = Sarki(sarkiPuani: 1)
let s3 = Sarki(sarkiPuani: 9)
let s4 = Sarki(sarkiPuani: 6)
let s5 = Sarki(sarkiPuani: 5)
let s6 = Sarki(sarkiPuani: 4)
let sarkilar = [s1, s2, s3, s4, s5, s6]

let siralanmisSarkilar = sarkilar.sorted { sarki1, sarki2 -> Bool in
    return sarki1.sarkiPuani > sarki2.sarkiPuani
}

for sarki in siralanmisSarkilar{
    print(sarki.sarkiPuani)
}
