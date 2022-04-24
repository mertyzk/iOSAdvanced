import UIKit

 
func denemeFunc(s1 : Double , s2 : Double) -> Double{
    return (s1 + s2) / 2
}

print(denemeFunc(s1: 2.5, s2: 3.5))

func carp(s1 : Double , s2 : Double) -> Double {
    return s1 * s2
}

print(carp(s1: 3.0, s2: 3.0))

func sayisalIslemler(s1 : Double , s2 : Double , yapilacakIslem : (Double , Double) -> Double) -> Double {
    
    let sonuc = yapilacakIslem(s1,s2)
    return sonuc
    
    //return carp(s1: s1, s2: s2) yaparsak sayisalIslemler içerisinde sadece carp fonksiyonunu kullanabiliriz.
    //fakat amacımız yapılacak işlem parametresiyle farklı fonksiyonları aynı fonksiyonu çalıştırabilmek.
    //farklı farklı fonksiyonları parametreye aktarmak istiyoruz.
    
}

print(sayisalIslemler(s1: 5, s2: 2, yapilacakIslem: carp))

func ortalamaAl(deger1 : Double , deger2 : Double) -> Double {
    return (deger1 + deger2) / 2
}

print(sayisalIslemler(s1: 5, s2: 2, yapilacakIslem: ortalamaAl))


/*{ (parameters) -> return type in
    statements
}

{ (deger1 : Double , deger2 : Double)) -> Double in
    return (deger1 + deger2) / 2
}*/

let sonuc1 : Double = sayisalIslemler(s1: 100, s2: 16, yapilacakIslem: {(sayi1 : Double , sayi2 : Double) -> Double in
    return sayi1.squareRoot() * sayi2.squareRoot()
    }
    )

print(sonuc1)

let sonuc2 : Double = sayisalIslemler(s1: 100, s2: 16, yapilacakIslem: { (sayi1 , sayi2) in // gelecek parametre tipi double olduğu için, yukarıdaki yapıyı sadeleştirdik
    return sayi1.squareRoot() * sayi2.squareRoot()
})

print(sonuc2)

let sonuc3 : Double = sayisalIslemler(s1: 100, s2: 16, yapilacakIslem: {(deger1 , deger2) in deger1.squareRoot() * deger2.squareRoot()}) // return ifadesi eksildi
// fakat in'den sonra
// deger1.squareRoot() * deger2.squareRoot()
// deger1 + deger2
// iki sonucu da istersek return ister "missing return a closure..." çünkü hangi değeri döndüreceğini bilmiyor
// sadece tek ifade varsa return ifadesini yazmaya gerek kalmaz.
print(sonuc3)

let sonuc4 : Double = sayisalIslemler(s1: 100, s2: 16, yapilacakIslem: {$0.squareRoot() * $1.squareRoot()}) // tek düze basit işlemlerle $ numaraları kullanılabilir.
print(sonuc4)
