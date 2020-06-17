//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Дмитрий Данилин on 17.06.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    //переменная для хранения изображения
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //вызываем загрузку переменной с фотографией в ячейку фотографии, расположенную в storiboard PhotoViewController
        photoImageView.image = image

        
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        //присваиваем константе принудительно извлеченное изображение, которое открыто в данный момент.
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        //проверяем, успешно ли было отправлено сообщение или нет
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно")
            }
        }
        
        //отображаем на экране контроллер shareController
        present(shareController, animated: true, completion: nil)
    }
}
