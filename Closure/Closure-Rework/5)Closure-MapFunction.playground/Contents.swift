import UIKit

let s1 = [3, 5, 7, 9]

var karesi : [Int] = [Int]()

for s in s1{
    karesi.append(s * s)
}

print(karesi)


// Map function 1. düzen

func karesiniAl(_ deger : Int) -> Int{
    return deger * deger
}

let s2 = s1.map(karesiniAl)
print(s2)

// 2. düzen

let s3 = s1.map { sayi in
    return sayi * sayi
}
print(s3)


// 3. düzen

let s4 = s1.map {$0 * $0}
print(s4)


func map1(sayilar : [Int] , islem : (Int) -> Int) -> [Int] {
    var sonuclar : [Int] = [Int]()
    for sayi in sayilar{
        sonuclar.append(islem(sayi))
    }
    return sonuclar
}


print(map1(sayilar: [2,4,6,8,10], islem: {(sayi) -> Int in sayi * sayi}))

// map1 func. generic yapıya dönüştürelim


func genericMap<T>(_ degerler : [T] , _ islem : (T) -> T) -> [T]{
    var sonuclar : [T] = [T]()
    for deger in degerler{
        sonuclar.append(islem(deger))
    }
    return sonuclar
}

let sehirler = ["İstanbul","Ankara","İzmir","Bursa","Muğla","Aydın","Kütayha"]
var yeniSehirler = genericMap(sehirler, {$0.uppercased()})
print(yeniSehirler)

func harfKucult(_ deger : String) -> String { return deger.lowercased()}
yeniSehirler = genericMap(sehirler, harfKucult)
print(yeniSehirler)

//Genericmap overloading


func genericMap<T,U> (_ degerler : [T] , _ islem : (T , T) -> U) -> [U]{ // degerler T tipinde bir dizi. islem closure'i 2 tane T tipinden parametre alacak ve U tipinden bir değer döndürecek. tüm fonksiyon (genericMap) ise U tipinden bir dizi döndürecek.
    
    var sonuclar : [U] = [U]()
    for (index , deger) in degerler.enumerated(){
        sonuclar.append(islem(index as! T , deger))
    }
    
    return sonuclar
    
}

let sayilarim : [Int] = [10, 20, 30, 40, 50, 60]
let yeniSayilarim = genericMap(sayilarim, {index , deger in
    return "\(index + 1) . Değer : \(deger)"
})
print(yeniSayilarim)
