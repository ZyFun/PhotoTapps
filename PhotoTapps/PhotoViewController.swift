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
    }
}
