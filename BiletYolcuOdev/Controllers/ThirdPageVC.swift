//
//  ThirdPageVC.swift
//  BiletYolcuOdev
//
//  Created by Furkan Yükcü on 10.04.2023.
//

import UIKit

class ThirdPageVC: UIViewController {

    @IBOutlet weak var thirdPageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Tasarım tanımlanır.
        let myDesign: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        Collectionview genişliği (ekran genişliği)
        let screenSize = self.thirdPageCollectionView.frame.size.width
//        Hücrelerin ekrana yakın olan kenarlarının uzaklığı (inset diyoruz)
        myDesign.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //örn : Hücrenin boyutu. Yatayda üç hücre iki tanesinin arasinda 5 bosuk olmasina istersek.
        //Toplam sol inset 10, sag inset 10, 3 hücrenin arasinda yer alan 2 adet 5 boşluk ile toplam 30 boşluk olur
        //Bosluklar haricinde kalan alana 3 adet hücreleri verlestiririz.
        myDesign.itemSize = CGSize(width: (screenSize-44)/6, height: (screenSize-44/6))
//        yatayda hücreler arası boşluk
        myDesign.minimumInteritemSpacing = 4
//        dikeyde hücreler arası boşluk
        myDesign.minimumLineSpacing = 4
        
        let cellSize = ((screenSize/6))
        myDesign.itemSize = CGSize(width: cellSize, height: cellSize)
        
//        layoutun uygulanması (tasarım collectionviewe yüklenir. )
        thirdPageCollectionView!.collectionViewLayout = myDesign
        
        
        
        configurethirdPageCollectionView()
        
        // Do any additional setup after loading the view.
    }
    private func configurethirdPageCollectionView() {
        thirdPageCollectionView.dataSource = self
        thirdPageCollectionView.delegate = self
    }
}
extension ThirdPageVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 55    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "seatCell", for: indexPath)
//    bir üst satıda olmalı    as! ThirdPageCell
//        cell.setup(model:)
        return cell
  }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
    }
    
    
}
