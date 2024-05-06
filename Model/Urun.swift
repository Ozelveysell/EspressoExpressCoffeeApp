
import Foundation
import UIKit

struct Urun {
    let name: String
    let price: Double
    let secenek: String // Ürünün hangi seçenek altında olduğunu belirtmek için
    let image: UIImage?
}

// Secenekler verisi gibi uygun bir veri yapısı kullanarak urunler verinizi tanımlayın.
let urunler: [Urun] = [
    Urun(name: "Americano", price: 60.0, secenek: "Kahveler", image: UIImage(named: "americano")),
    Urun(name: "Mocha", price: 64.0, secenek: "Kahveler", image: UIImage(named: "mocha")),
    Urun(name: "White Chocolate Mocha", price: 82.0, secenek: "Kahveler", image: UIImage(named: "whitechocolatemocha")),
    Urun(name: "Latte", price: 66.0, secenek: "Kahveler", image: UIImage(named: "latte")),
    Urun(name: "Macchiato", price: 58.0, secenek: "Kahveler", image: UIImage(named: "macchiato")),
    Urun(name: "Cappuccino", price: 58.0, secenek: "Kahveler", image: UIImage(named: "cappuccino")),
    Urun(name: "Flat White", price: 62.0, secenek: "Kahveler", image: UIImage(named: "flatwhite")),
    Urun(name: "Cold Brew", price: 56.0, secenek: "Kahveler", image: UIImage(named: "coldbrew")),
    Urun(name: "Havuçlu Kek", price: 84.0, secenek: "Tatlılar", image: UIImage(named: "havuçlukek")),
    Urun(name: "Mozaik Kek", price: 54.0, secenek: "Tatlılar", image: UIImage(named: "mozaikkek")),
    Urun(name: "Misto Cookie", price: 48.0, secenek: "Tatlılar", image: UIImage(named: "mistocookie")),
    Urun(name: "Belçika Çikolatalı Pasta", price: 96.0, secenek: "Tatlılar", image: UIImage(named: "belcikacikolatalipasta")),
    Urun(name: "Brownie", price: 78.0, secenek: "Tatlılar", image: UIImage(named: "Brownie")),
    Urun(name: "Limonlu Kek", price: 54.0, secenek: "Tatlılar", image: UIImage(named: "LimonluKek")),
    Urun(name: "Çikolatalı Donut", price: 54.0, secenek: "Tatlılar", image: UIImage(named: "ÇikolatalıDonut")),
    Urun(name: "Pembe Donut", price: 54.0, secenek: "Tatlılar", image: UIImage(named: "PembeDonut")),
    Urun(name: "Peynirli Simit", price: 48.0, secenek: "Kahvaltılık", image: UIImage(named: "peynirlisimit")),
    Urun(name: "Zeytinli Açma", price: 36.0, secenek: "Kahvaltılık", image: UIImage(named: "Zeytinli Açma")),
    Urun(name: "Çikolatalı Kruvasan", price: 54.0, secenek: "Kahvaltılık", image: UIImage(named: "Çikolatalı Kruvasan")),
    Urun(name: "Tahıllı Peynirli Poğaça", price: 36.0, secenek: "Kahvaltılık", image: UIImage(named: "Tahıllı Peynirli Poğaça")),
    Urun(name: "Domatesli Poğaça", price: 54.0, secenek: "Kahvaltılık", image: UIImage(named: "Domatesli Poğaça")),
    Urun(name: "Karabuğdaylı Poğaça", price: 54.0, secenek: "Kahvaltılık", image: UIImage(named: "Karabuğdaylı Poğaça")),
    Urun(name: "Su (500 ml.)", price: 12.0, secenek: "İçecekler", image: UIImage(named: "Su (500 ml.)")),
    Urun(name: "Soda (200 ml.)", price: 22.0, secenek: "İçecekler", image: UIImage(named: "Soda (200 ml.)")),
    Urun(name: "Ayran (285 ml.)", price: 35.0, secenek: "İçecekler", image: UIImage(named: "Ayran (285 ml.)")),
    Urun(name: "Coca-Cola (450 ml.)", price: 39.0, secenek: "İçecekler", image: UIImage(named: "Coca-Cola (450 ml.)")),
    Urun(name: "Cool Lime", price: 70.0, secenek: "İçecekler", image: UIImage(named: "Cool Lime")),
    Urun(name: "Berry Hibiscus", price: 82.0, secenek: "İçecekler", image: UIImage(named: "Berry Hibiscus")),
    Urun(name: "Körili Tavuklu Makarna", price: 165.0, secenek: "Makarnalar", image: UIImage(named: "Körili Tavuklu Makarna")),
    Urun(name: "Soyalı Tavuklu Makarna", price: 159.0, secenek: "Makarnalar", image: UIImage(named: "Soyalı Tavuklu Makarna")),
    Urun(name: "Üç Peynirli Makarna", price: 149.0, secenek: "Makarnalar", image: UIImage(named: "Üç Peynirli Makarna")),
    Urun(name: "Kremalı Tavuklu Makarna", price: 155.0, secenek: "Makarnalar", image: UIImage(named: "Kremalı Tavuklu Makarna")),
    Urun(name: "Adana Kebap", price: 250.0, secenek: "Yemekler", image: UIImage(named: "Adana Kebap")),
    Urun(name: "Urfa Kebap", price: 260.0, secenek: "Yemekler", image: UIImage(named: "Urfa Kebap")),
    Urun(name: "Ciğer", price: 200.0, secenek: "Yemekler", image: UIImage(named: "Ciğer")),
    Urun(name: "Tavuk Şiş", price: 140.0, secenek: "Yemekler", image: UIImage(named: "Tavuk Şiş")),
    Urun(name: "Tavuk Pirzola", price: 130.0, secenek: "Yemekler", image: UIImage(named: "Tavuk Pirzola")),
    Urun(name: "Pirzola", price: 350.0, secenek: "Yemekler", image: UIImage(named: "Pirzola")),
    
]
