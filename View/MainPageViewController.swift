

import UIKit

class MainPageViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
               layout.scrollDirection = .vertical
               layout.itemSize = CGSize(width: (collectionView.frame.width - 20) / 2, height: 300) // collectionView'ın genişliğine göre hücrelerin boyutunu belirleme
               layout.minimumInteritemSpacing = 10 // Yatayda hücreler arasındaki minimum boşluk
               layout.minimumLineSpacing = 10 // Dikeyde hücreler arasındaki minimum boşluk
               collectionView.collectionViewLayout = layout
        
    }
    
}

extension MainPageViewController: UICollectionViewDataSource , UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return secenekler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecenekCell", for: indexPath) as! SeceneklerCollectionViewCell
        cell.layer.borderWidth = 1.0 // Çerçeve genişliği
           cell.layer.borderColor = UIColor.black.cgColor // Çerçeve rengi
           
        cell.setup(with: secenekler[indexPath.row])
        return cell
        
    }
    // collectionView(_:didSelectItemAt:) metodu koleksiyon hücreleri tıklandığında çağrılır.
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Seçilen hücrenin indeksini alıyoruz
        let selectedIndexPath = indexPath.row
        
        // Seçilen hücreye ait veriyi alıyoruz
        let selectedData = secenekler[selectedIndexPath]
        
        // Bir sonraki sayfaya geçiş yapmadan önce veriyi aktarıyoruz
        performSegue(withIdentifier: "toDetailPage", sender: selectedData)
    }
    
    // prepare(for:sender:) metodu bir segue geçişinden önce çağrılır.
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "toDetailPage" {
               // Bir sonraki sayfa ViewController sınıfına ait olduğu için, destinationViewController değişkenine cast edilir.
               if let detailViewController = segue.destination as? DetailViewController {
                   // Göndericiyi SecenekVerisi olarak alıyoruz.
                   if let selectedData = sender as? Secenek {
                       // NextViewController'a veriyi aktarıyoruz.
                       detailViewController.selectedData = selectedData
                   }
               }
           }
       }
   
}
