
import Foundation
import UIKit

struct Secenek {
    
    let title: String
    let image: UIImage
    
}
let coffeeImage = UIImage(named: "coffee")
let dessertsImage = UIImage(named: "desserts")
let beveragesImage = UIImage(named: "beverages")
let breakfastImage = UIImage(named: "breakfast")
let pastasImage = UIImage(named: "pastas")
let mealsImage = UIImage(named: "meals")
let secenekler: [Secenek] = [
    Secenek(title: "Kahveler", image: coffeeImage!),
    Secenek(title: "Tatlılar", image: dessertsImage!),
    Secenek(title: "İçecekler", image: beveragesImage!),
    Secenek(title: "Kahvaltılık", image: breakfastImage!),
    Secenek(title: "Makarnalar", image: pastasImage!),
    Secenek(title: "Yemekler", image: mealsImage!)
]
