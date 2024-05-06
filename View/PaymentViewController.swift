//
//  PaymentViewController.swift
//  EspressoExpress
//
//  Created by veysel on 28.04.2024.
//

import UIKit

class PaymentViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var totalButton: UIButton!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    var cartItems: [(name: String, price: Double, quantity: Int, image: UIImage)] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Sepet içeriğini aldığınızda burada alınan ürünleri PaymentTableViewCell hücrelerinde gösterebilirsiniz.
        // Örneğin, cartItems dizisini kullanarak tableView'ı güncelleyebilirsiniz.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData() // TableView'ı güncelleyin
        
      
        let totalPrice = calculateTotalPrice()
        totalLabel?.text = "Toplam Tutar: \(totalPrice) ₺"
    }

    func updateCartItems(items: [(name: String, price: Double, quantity: Int, image: UIImage)]) {
         // PaymentViewController'dan alınan sepet içeriğini burada kullanabilirsiniz
         cartItems = items
         // Sepet içeriği güncellendikten sonra tableView'ı yeniden yükleyin
      //   tableView.reloadData()
     }
    
    func calculateTotalPrice() -> Double {
        var totalPrice: Double = 0
        
        for item in cartItems {
            totalPrice += item.price * Double(item.quantity)
        }
        
        return totalPrice
    }
    
    
    @IBAction func totalButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toPayVC", sender: nil)
        
    }
    
    
}

extension PaymentViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    @objc func minusImageTapped(sender: UITapGestureRecognizer) {
        if let imageView = sender.view as? UIImageView {
            let cellIndex = imageView.tag // Hangi hücreye ait olduğunu bulun
            var selectedItem = cartItems[cellIndex] // Seçilen ürünü alın
            
            // Adet sayısını kontrol edin
            if selectedItem.quantity > 1 {
                selectedItem.quantity -= 1 // Adet sayısını azalt
                cartItems[cellIndex] = selectedItem // Değişikliği güncelle
            } else {
                cartItems.remove(at: cellIndex) // Adet 1 ise hücreyi sil
            }
            
            // TableView'ı yeniden yükleyin
            tableView.reloadData()
            
            // Toplam tutarı yeniden hesaplayın ve güncelleyin
            let totalPrice = calculateTotalPrice()
            totalLabel?.text = "Toplam Tutar: \(totalPrice) ₺"
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paymentCell", for: indexPath) as! PaymentTableViewCell
        
        let item = cartItems[indexPath.row]
        
        cell.titleLabel.text = item.name
        cell.priceLabel.text = "\(item.price) ₺"
        cell.pieceLabel.text = "Adet: \(item.quantity)"
        cell.imageview2.image = item.image // Fotoğrafı ekleyin
        cell.minusImage.tag = indexPath.row

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(minusImageTapped))
          cell.minusImage.isUserInteractionEnabled = true
          cell.minusImage.addGestureRecognizer(tapGesture)
          
        
        return cell
    }
    
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 150 // Hücre yüksekliği 80 nokta olarak ayarlandı, istediğiniz değeri kullanabilirsiniz.
     }
}
