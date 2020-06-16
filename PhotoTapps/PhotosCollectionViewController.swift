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
        // Количество секций
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
}

//дополняем наш класс, чтобы настроить интерфейс приложения
extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    //метод для изменения размеров ячейки
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //константа количества объектов на ряд
        let itemsPerRow: CGFloat = 2
        //константа суммарного размеров отступа
        let paddingWidth = 20 * (itemsPerRow + 1)
        //константа с помощью которой мы поймём, какая ширина доступна для ячеек
        let availableWidth = collectionView.frame.width - paddingWidth
        //Константа, с помощью которой производится вычисление, для определения ширины конкретной ячейки
        let widthPerItem = availableWidth / itemsPerRow
        //Возвращаем вычисленный размер ячейки
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    //метод, для настройки отступа границ коллекции
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }

    //метод для настройки отступа в линии
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

//    //Какие границы? В курсе он не объяснил. Этот метод ломает всю разметку и выстраивает ячейки в ряд О_о Судя по документации, должен настраивать столбцы. Но в видео работает нормально, а у меня всё летит...
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        20
//    }
    
}
