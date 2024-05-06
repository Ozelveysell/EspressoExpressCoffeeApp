# EspressoExpressCoffeeApp
ExpressoExpress Uygulaması
ExpressoExpress, Swift programlama dili kullanılarak geliştirilmiş bir kahve sipariş uygulamasıdır. Bu README dosyası, uygulamanın genel yapısı, kullanılan teknolojiler ve dosya yapıları hakkında bilgi sağlayacaktır.

Proje Genel Bakış
ExpressoExpress uygulaması, kullanıcıların kahve çeşitleri, tatlılar, içecekler ve diğer ürünleri görebileceği, seçim yapabileceği ve sepete ekleyebileceği bir yapı üzerine kuruludur. Uygulama, kullanıcıların kolayca sipariş verebilmesi ve ödeme yapabilmesi için tasarlanmıştır.

Kullanılan Teknolojiler
Uygulama geliştirilirken aşağıdaki teknolojiler ve bileşenler kullanılmıştır:

Swift 5: Uygulama, Swift 5 programlama dilinde yazılmıştır.
UIKit Framework: Kullanıcı arayüzü oluşturmak ve yönetmek için UIKit Framework kullanılmıştır.
CoreData Framework: Veritabanı yönetimi için CoreData Framework kullanılmıştır.
Storyboard ve XIB Dosyaları: Kullanıcı arayüzü tasarımı için Storyboard ve XIB dosyaları kullanılmıştır.
MVVM Tasarım Deseni: Uygulama, Model-View-ViewModel (MVVM) tasarım desenini kullanarak geliştirilmiştir.
Combine Framework: Asenkron veri işleme ve olay akışı için Combine Framework kullanılmıştır.
Proje Yapısı
Proje dosyaları aşağıdaki gibi yapılandırılmıştır:

Copy code
ExpressoExpress/
├── Models/
│   ├── Secenek.swift
│   └── Urun.swift
├── ViewModels/
│   └── OrderViewModel.swift
├── Views/
│   ├── MainPageViewController.swift
│   ├── DetailViewController.swift
│   ├── PaymentViewController.swift
│   └── EndViewController.swift
├── Controllers/
│   ├── SeceneklerCollectionViewCell.swift
│   ├── PaymentTableViewCell.swift
│   └── ProductTableViewCell.swift
├── Resources/
│   ├── Assets.xcassets/
│   └── Storyboards/
├── AppDelegate.swift
└── README.md
Models: Veri modelleri ve iş mantığı kodları burada yer alır.
ViewModels: MVVM tasarım desenine uygun olarak ViewModel'ın kodları burada bulunur.
Views: Kullanıcı arayüzü bileşenleri (View'lar) burada yer alır.
Controllers: Uygulama kontrolleri ve yönlendirmeleri burada sağlanır.
Resources: Uygulama içerisinde kullanılan görseller, ikonlar, storyboard ve diğer kaynaklar burada bulunur.
AppDelegate.swift: Uygulamanın ana başlangıç noktası ve genel ayarları burada yer alır.
README.md: Bu dosya, uygulamanın genel yapısı, teknolojiler, dosya yapıları ve nasıl kullanılacağı hakkında bilgi sağlar.
Kurulum ve Çalıştırma
Bu depoyu bilgisayarınıza klonlayın veya ZIP olarak indirin.
Xcode ile projeyi açın.
Projeyi derleyin ve emülatörde veya gerçek cihazda çalıştırın.
Ek Bilgiler
Uygulama, kullanıcıların kahve çeşitleri, tatlılar, içecekler ve diğer ürünleri görmesini, seçim yapmasını ve sepete eklemesini sağlar.
CoreData kullanılarak kullanıcıların sipariş geçmişi takip edilir.
MVVM tasarım deseni kullanılarak uygulamanın genel yapısı oluşturulmuş, bu da kodun daha modüler ve bakımı daha kolay olmasını sağlar. 
