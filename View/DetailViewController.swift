//
//  DetailViewController.swift
//  EspressoExpress
//
//  Created by veysel on 26.04.2024.
//

import UIKit

class DetailViewController: UIViewController {

    var selectedData: Secenek? // Seçilen veriyi tutmak için bir değişken

    var filteredUrunler: [Urun] = []

    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var sepetImageView: UIImageView!
    
    
    @IBOutlet weak var tableView: UITableView!
    var cartItems: [(name: String, price: Double, quantity: Int, image: UIImage)] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Secenek verisine göre urunleri filtrele
        if let secenek = selectedData {
            filteredUrunler = urunler.filter { $0.secenek == secenek.title
            }
            TitleLabel.text = secenek.title
        }
        
        // Tablo görünümünü yeniden yükle
        tableView.reloadData()

        // UITapGestureRecognizer oluşturun ve sepetImageView'e ekleyin
                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(sepetImageViewTapped))
                sepetImageView.isUserInteractionEnabled = true
                sepetImageView.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func sepetImageViewTapped() {
        // Segue'yi başlat
        performSegue(withIdentifier: "toPaymentVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPaymentVC" {
            // Eğer segue toPaymentVC ise, PaymentViewController'a veri gönder
            if let paymentVC = segue.destination as? PaymentViewController {
                // Burada gerekli verileri PaymentViewController'a gönderebilirsiniz
                // Örneğin, sepet içeriği
                paymentVC.updateCartItems(items: cartItems)
            }
        }
    }
    
    func addToCart(selectedUrun: Urun) {
        // Önce ürünün sepette olup olmadığını kontrol edin
        if let existingItemIndex = cartItems.firstIndex(where: { $0.name == selectedUrun.name }) {
            // Eğer ürün zaten sepette ise, miktarını arttırın
            cartItems[existingItemIndex].quantity += 1
        } else {
            // Eğer ürün sepette değilse, yeni bir öğe olarak ekleyin
            let newItem = (name: selectedUrun.name, price: selectedUrun.price, quantity: 1, image: selectedUrun.image!)

            cartItems.append(newItem)
        }
        
        // Sepete eklenen ürünü bildirmek için bir uyarı gösterin
        let alertView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        alertView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        alertView.layer.cornerRadius = 10

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        label.text = "\(selectedUrun.name) - \(selectedUrun.price) ₺ sepete eklendi."
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.numberOfLines = 0
        alertView.addSubview(label)

        alertView.center = view.center
        view.addSubview(alertView)

        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseOut, animations: {
            alertView.alpha = 0
        }, completion: { _ in
            alertView.removeFromSuperview()
        })
    }
    
    // Seçilen seçeneğe göre ürünleri filtreleyen fonksiyon
      func filterUrunler(for secenek: Secenek) -> [Urun] {
          // Burada secenek verisine göre urunler dizisini filtreleyebilirsiniz.
          // Örnek olarak, "Kahve" seçildiyse, sadece kahve ürünlerini getirebilirsiniz.
          // Filtreleme işlemini secenek verisinin title özelliğini kullanarak yapabilirsiniz.
          // Filtreleme işlemi burada gerçekleştirilmelidir.
          
          // Örnek bir filtreleme işlemi:
          let filteredUrunler = urunler.filter { $0.secenek == secenek.title }
          return filteredUrunler
      }
      

}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    // TableViewDataSource fonksiyonları
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredUrunler.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 150 // Hücre yüksekliği 80 nokta olarak ayarlandı, istediğiniz değeri kullanabilirsiniz.
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UrunCell", for: indexPath) as! ProductTableViewCell
        
        let urun = filteredUrunler[indexPath.row]

        
        cell.titleLabel?.text = urun.name
        cell.cellImageView?.image = urun.image
        cell.priceLabel?.text = "\(urun.price) ₺"
        cell.layer.borderWidth = 1.0 // Çerçeve genişliği
           cell.layer.borderColor = UIColor.black.cgColor // Çerçeve rengi
        // UIImageView'e dokunma olayını eklemek için UITapGestureRecognizer oluşturun
           let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(sender:)))
           cell.imageview2.isUserInteractionEnabled = true
           cell.imageview2.addGestureRecognizer(tapGesture)
           cell.imageview2.tag = indexPath.row // UIImageView'in hangi ürüne ait olduğunu belirtmek için tag kullanın

        
        return cell
    }
    @objc func imageTapped(sender: UITapGestureRecognizer) {
          if let imageView = sender.view as? UIImageView {
              let selectedUrun = filteredUrunler[imageView.tag]
              addToCart(selectedUrun: selectedUrun)
          }
      }
}
