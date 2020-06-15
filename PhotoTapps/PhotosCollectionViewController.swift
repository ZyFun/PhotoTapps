//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Дмитрий Данилин on 15.06.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit 

class PhotosCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        // КОличество секций
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        // Количество ячеек
        return 15
    }

    // Конфигурирование ячейки
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
    
        cell.backgroundColor = .black
    
        return cell
    }

    extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
         
    }
    
}
