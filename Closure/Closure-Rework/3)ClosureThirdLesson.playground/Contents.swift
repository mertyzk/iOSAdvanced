import UIKit

extension Int {
    func islemUygula(_ islem : (Int) -> Int) -> Int{
        return islem(self) // self, uygulanacak değeri belirtir. amaç: bu değeri prototipe uyan closure'a veya fonksiyona göndermek.
    }
}


func fact(_ sayi : Int) -> Int{
    var sonuc : Int = 1
    var temp : Int = sayi
    while temp > 0 {
        sonuc *= temp
        temp -= 1
    }
    return sonuc
}

print(fact(5))
let sonuc : Int = 6.islemUygula(fact)
print(sonuc)


print(6.islemUygula({ sayi in
    var sonuc : Int = 1
    var temp : Int = sayi
    while temp > 0 {
        sonuc *= temp
        temp -= 1
    }
    return sonuc
}))

var s1 : Int = 68

s1 = s1.islemUygula({ deger in
    let b = deger % 10
    if b < 5 {
        return (deger - b)
    } else {
        return (deger + 10 - b)
    }
})

print(s1)

// bir değişkene closure yapısını atamak


var kuvvetHesapla : (Int , Int) -> Int = { taban , us in
    var i = 0
    var sonuc : Int = 1
    while i < us{
        sonuc *= taban
        i += 1
    }
    return sonuc
}

print(kuvvetHesapla(3,3))

let topla = {(sayi1 : Int , sayi2 : Int) -> Int in sayi1 + sayi2}
print(topla(3,4))

let topla2 = {(sayi1 , sayi2) -> Int in sayi1 + sayi2}
print(topla(3,4))
