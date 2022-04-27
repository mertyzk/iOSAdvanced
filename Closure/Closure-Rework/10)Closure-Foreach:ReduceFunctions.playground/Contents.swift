import UIKit

// 1. yöntem for dongusu

let sayilar = [10,5,3,7,9,2,4,8,6,1]
var toplam1 = 0
for sayi in sayilar{
    toplam1 += sayi
}
print("Toplam1 değeri : \(toplam1)")


print("*****************************************************")

// 2. yöntem foreach

var toplam2 = 0
sayilar.forEach { toplam2 += $0 }
print("Toplam2 değeri : \(toplam2)")

print("*****************************************************")

// 3. yöntem reduce

let toplam3 = sayilar.reduce(0) { (sonuc , gelenDeger) -> Int in // baslangic degeri 0. sonuc degerine 0 atanacaktir. sonrasinda gelenDeger 10 atanacaktir.
    return sonuc + gelenDeger // sonuc + deger = 10 degeri tekrardan yukaridaki sonuc degerine aktarilacaktir ve diziden 5 degeri gelenDeger'e atanacaktir. bu sekilde toplanarak devam edilecek ve tum elemanlar gezilecektir.
}
print("3. YÖNTEM REDUCE: \(toplam3)")


print("*****************************************************")

// 2. örnek

let notlar : [Double] = [90,55,76]
let notlarToplam = notlar.reduce(0) {$0 + $1}
//let notlarToplam = notlar.reduce(0, {$0 + $1}) // üstteki satırla aynı şey
print("REDUCE NOTLAR TOPLAM: \(notlarToplam)")
var notlarToplam2 : Double = 0
notlar.forEach { notlarToplam2 += $0 }
print("NOTLAR TOPLAM2  FOREACH : \(notlarToplam2)")
print("*****************************************************")


// FAKTORIYEL ORNEGI (DIZI)


let faktoriyelDizi = Array(1...6) //1'den başlayıp 6'ya kadar (6 dahil) diziyi oluşturdu
print("Oluşturulan dizi: \(faktoriyelDizi)")
print("*****************************************************")
var f1 = 1
faktoriyelDizi.forEach{f1 *= $0}
print("Foreach ile faktoriyel hesabı : \(f1)")
print("*****************************************************")
let f2 = faktoriyelDizi.reduce(1, {$0 * $1})
print("REDUCE FONK. ile faktoriyel hesabı : \(f2)")

print("*****************************************************")


// STRING DIZI ile

let kelimeler = ["Merhaba","Bugün","Hava","Güneşli","Değil","mi?"]
var cumle1 = ""
kelimeler.forEach{cumle1 += $0 + " "}
print(cumle1)

let cumle2 = kelimeler.reduce("") { $0 + $1 + " "}
print(cumle2)
