import UIKit

var piKat : (Int) -> Double = {
    Double($0) * Double.pi
}

var mesajGetir : (String) -> String = {
    "Mesajınız var: \($0)"
}

print(piKat(3))
print(mesajGetir("Hello world!"))


var geometrikOrta = { (sayi1 : Double , sayi2 : Double) in
    return sayi1.squareRoot() * sayi2.squareRoot()
}
print(geometrikOrta(4,9))

func closureGetir() -> ((Double , Double) -> Double){
    return geometrikOrta
}


let sonuc = closureGetir()
print(sonuc(4, 9))


// fonksiyon döndüren fonksiyon

typealias sayiAl = (Int) -> () // voide gerek yok boş değer gönderiyor ()

func counter() -> sayiAl {
    func yasHesapla(dogumYili : Int) {
        print("Kişinin yaşı : \(2022-dogumYili)")
    }
    return yasHesapla
}

let f1 = counter()
print(f1(1995))



//closure yapısını döndüren fonksiyon

func ortClosureGetir() -> (Double , Double) -> Double {
    return {(sayi1 , sayi2) in (sayi1 + sayi2) / 2}
}

let c1 : (Double , Double) -> Double = ortClosureGetir()
print(c1(6, 6))


func ortClosureGetirKisaYol() -> (Double , Double) -> Double{
    return {($0 + $1) / 2}
}

let c2 = ortClosureGetir()
print(c2(6, 6))


typealias tip1 = () -> String

func favoriGitarist(_ closureDegeri : tip1) -> String {
    return closureDegeri() // closureDegeri func string bir değer döndürecek
}// parametre tip1 tipinden

let gitarist : () -> String = {
    "Eric Clapton"
}

var g1 = favoriGitarist(gitarist)
print(g1)

g1 = favoriGitarist({() in return "Jeff back"})
print(g1)

g1 = favoriGitarist({ return "Jimmy Page"})
print(g1)

g1 = favoriGitarist({
    "Eric Clapton"
})
print(g1)
