//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Дмитрий Данилин on 15.06.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//


import UIKit 

class PhotosCollectionViewController: UICollectionViewController {

    //массив с изображениями (на гитхаб я их не грузил, потому что тяжелые)
    let photos = ["dog1", "dog2", "dog3", "dog4", "dog5", "dog6", "dog7", "dog8", "dog9", "dog10", "dog11", "dog12", "dog13", "dog14", "dog15"]
    
    //константа количества объектов на ряд
    let itemsPerRow: CGFloat = 2
    //настраиваем константу с отступами от секций
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Пример другого способа разметки интерфейса коллекций
//        //создаём константу, через которую мы получаем доступ по настройке размеров
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        //настраиваем размер ячеек (но почему то у меня не работает и ничего не меняет)
//        layout.itemSize = CGSize(width: 70, height: 30)
//        //Настраиваем отступы
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
//        //Настраиваем отступ в линии
//        layout.minimumLineSpacing = 1
//        //Настраиваем отступ в столбцах
//        layout.minimumInteritemSpacing = 1
//        //Включаем вертикальную прокрутку
//        layout.scrollDirection = .vertical
//
//        //отключаем отображение полосы прокрутки
//        collectionView.showsVerticalScrollIndicator = false
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        // Количество секций
        return 1
    }

    //конфигурация количества ячеек
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        // Количество отображаемых ячеек посчитанное из массива фотографий
        return photos.count
    }

    // Конфигурирование ячейки
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        
        //обращаемся к объекту по индексу в массиве фотографий?
        let imageName = photos[indexPath.item]
        //получаем коллекцию фотографий?
        let image = UIImage(named: imageName)
        
        //вызываем фотографии в ячейку
        cell.gdansImageView.image = image
    
        return cell
    }
}

//дополняем наш класс, чтобы настроить интерфейс приложения
extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {

    //метод для изменения размеров ячейки
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //константа суммарного размеров отступа
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        //константа с помощью которой мы поймём, какая ширина доступна для ячеек
        let availableWidth = collectionView.frame.width - paddingWidth
        //Константа, с помощью которой производится вычисление, для определения ширины конкретной ячейки
        let widthPerItem = availableWidth / itemsPerRow
        //Возвращаем вычисленный размер ячейки
        return CGSize(width: widthPerItem, height: widthPerItem)
    }

    //метод, для настройки отступа границ коллекции
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //возвращаем заранее определенную константу типа UIEdgeInsets
        return sectionInserts
    }

    //метод для настройки отступа в линии
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        //возвращаем заранее определенную константу типа UIEdgeInsets и берем её левое значение
        return sectionInserts.left
    }

    //метод для настройки отступа в столбце.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        //возвращаем заранее определенную константу типа UIEdgeInsets и берем её левое значение
        return sectionInserts.left
    }

}
