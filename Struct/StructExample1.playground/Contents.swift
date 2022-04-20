import UIKit

struct Daire{
    var odaSayisi : Int
    var salonSayisi : Int
    var daireBuyuklugu : Double
    var banyoSayisi : Int
    var wcSayisi : Int
    var satilik : Bool
    var kiralik : Bool
    var dolu : Bool
    var daireSahibiAd : String
    var daireSahibiTelNo : String
    var katNo : Int?
    var kapiNo : Int?
    var bulunduguApartman : Apartman?
    
    func daireBilgisiGoster(){
        
        guard let katNo = katNo else {
            return
        }
        guard let kapiNo = kapiNo else {
            return
        }
        
        print("""
        ---------------------------------
        DAİRE BİLGİLERİ
        Oda sayısı: \(odaSayisi)
        Salon sayısı : \(salonSayisi)
        Dairenin büyüklüğü : \(daireBuyuklugu)
        Banyo sayısı : \(banyoSayisi)
        WC sayısı : \(wcSayisi)
        \(katNo). Kat Daire - \(kapiNo)
        """)
        
        if satilik{
            print("Daire satılıktır.")
        } else {
            print("Daire satılık değildir.")
        }
        
        if kiralik{
            print("Daire kiralıktır.")
        } else {
            print("Daire kiralık değildir.")
        }
        if dolu{
            print("Dairede oturan vardır.")
        }
        else{
            print("Daire boştur.")
        }
        
        print("""
        Daire Sahibi Adı : \(daireSahibiAd)
        Daire Sahibi Tel No : \(daireSahibiTelNo)
""")
    
        
    } // func end
    
    init(odaSayisi : Int, salonSayisi : Int, daireBuyuklugu : Double, banyoSayisi : Int, wcSayisi : Int, satilik : Bool, kiralik : Bool, dolu : Bool, daireSahibiAd : String, daireSahibiTelNo : String) {
        self.odaSayisi = odaSayisi
        self.salonSayisi = salonSayisi
        self.daireBuyuklugu = daireBuyuklugu
        self.banyoSayisi = banyoSayisi
        self.wcSayisi = wcSayisi
        self.satilik = satilik
        self.kiralik = kiralik
        self.dolu = dolu
        self.daireSahibiAd = daireSahibiAd
        self.daireSahibiTelNo = daireSahibiTelNo
    }
    
    
}// struct end

struct AdresBilgileri {
    var il : String
    var ilce : String
    var postaKodu : Int
    var mahalle : String
    var cadde : String
    var sokak : String
    
    func AdresBilgisiGoster() -> String {
        return """
        İl :  \(il)
        İlçe : \(ilce)
        Posta Kodu : \(postaKodu)
        \(mahalle) Mahallesi
        \(cadde) Caddesi
        \(sokak) Sokağı
        """
    }// adres bilgileri goster metodu bitisi
}// adresbilgileri struct bitis

struct Apartman {
    
    var apartmanAdi : String = ""
    var katSayisi : Int = -1
    var apartmanAdresi : AdresBilgileri
    var daireSayisi : Int
    var daireler : [Daire]
    
    mutating func katEkle (){
        katSayisi += 1
    }
    mutating func katEkle(eklenecekKatSayisi : Int){
        katSayisi += eklenecekKatSayisi
    }
    
    mutating func daireEkle(daire : inout Daire, katNo : Int, kapiNo : Int) { // Bu daire eklenirken, Daire'nin bazı özelliklerini değiştireceğiz. Bu yüzden inout özelliğini kullanacağız. Daire'yi adresiyle birlikte almamız gerekiyor.
    
        if katNo > katSayisi{
            print("Kat sayısından dolayı eklenmesi mümkün değildir")
        } else {
            daire.bulunduguApartman = self // func içerisinde parametre olarak gelen dairenin bulunduğu apartman - self hangi struct ya da hangi değişken için çalışıyorsa onun için atanacak
            daire.katNo = katNo
            daire.kapiNo = kapiNo
            self.daireSayisi += 1
            daireler.append(daire)
        }
        
    }
    
    func apartmanBilgileriniGoster(){
        print("""

        #################################################################
        Apartmanda Bulunan Daire Sayısı : \(daireler.count)
        Kat Sayısı : \(katSayisi)
        ************* A D R E S ****************
        \(apartmanAdresi.AdresBilgisiGoster())
        
        

        #################################################################
        """)
    }
    func kisininAdresiniBul(adi : String){
        var bulundu : Bool = false
        for daire in daireler {
            if daire.daireSahibiAd == adi{
                bulundu = true
                print("""
        
        #################################################################
                ************* ARANAN KİŞİNİN ADRESİ ****************
                \(apartmanAdresi.AdresBilgisiGoster())
                \(apartmanAdi) Apartmanı
                \(daire.katNo!) Katında
                \(daire.kapiNo!) Kapı Numaralı
                Adı: \(daire.daireSahibiAd)
                Telefonu:  \(daire.daireSahibiTelNo)

        #################################################################
        """)
                break
            }
        }
        
        if !bulundu {
            print("Kişi bulunamadı")
        }
    }
}

var daire1 : Daire = Daire(odaSayisi: 3, salonSayisi: 2, daireBuyuklugu: 210, banyoSayisi: 2, wcSayisi: 1, satilik: false, kiralik: false, dolu: true, daireSahibiAd: "Ahmet", daireSahibiTelNo: "12313123132")
var daire2 : Daire = Daire(odaSayisi: 4, salonSayisi: 1, daireBuyuklugu: 230, banyoSayisi: 3, wcSayisi: 2, satilik: true, kiralik: true, dolu: false, daireSahibiAd: "Veli", daireSahibiTelNo: "45646546456")
var daire3 : Daire = Daire(odaSayisi: 3, salonSayisi: 1, daireBuyuklugu: 185, banyoSayisi: 2, wcSayisi: 1, satilik: true, kiralik: true, dolu: true, daireSahibiAd: "Kerem", daireSahibiTelNo: "87878787887")

var apartman1 :  Apartman = Apartman(apartmanAdi: "Selvi", katSayisi: 15, apartmanAdresi: AdresBilgileri(il: "Ankara", ilce: "Çankaya", postaKodu: 06630, mahalle: "Yukarı Öveçler Mah.", cadde: "4462. Cadde", sokak: "Deneme Sokak"), daireSayisi: 0, daireler: [Daire]())



daire1.daireBilgisiGoster()
apartman1.katEkle()
apartman1.apartmanBilgileriniGoster()

apartman1.daireEkle(daire: &daire1, katNo: 1, kapiNo: 1)
apartman1.daireEkle(daire: &daire2, katNo: 2, kapiNo: 3)
apartman1.daireEkle(daire: &daire3, katNo: 5, kapiNo: 8)

daire1.daireBilgisiGoster()
apartman1.apartmanBilgileriniGoster()

apartman1.kisininAdresiniBul(adi: "Ahmet1")

daire2.daireBilgisiGoster()
