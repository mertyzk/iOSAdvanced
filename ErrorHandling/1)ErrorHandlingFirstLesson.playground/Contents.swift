import UIKit


enum YasHatasi : Error {
    case maxYasHatasi
    case minYasHatasi
}

func dernekKayit(yas : Int) throws {
    if yas > 30 {
        print("Yaşınız büyük")
        throw YasHatasi.maxYasHatasi
    } else if yas < 18{
        print("Yaşınız küçük")
        throw YasHatasi.minYasHatasi
    } else {
        print("Kayıt başarılı")
    }
}


do {
    try dernekKayit(yas: 12)
} catch YasHatasi.maxYasHatasi {
    print("Yaşınız çok büyük bu yüzden kayıt olamamazsınız")
} catch YasHatasi.minYasHatasi{
    print("Yaşınız çok küçük bu yüzden kayıt yaptıramazsınız")
}
