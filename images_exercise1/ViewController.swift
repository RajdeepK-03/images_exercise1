//
//  ViewController.swift
//  images_exercise1
//
//  Created by MacStudent on 2020-01-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    var index = 0
    var imgArray = [ UIImage(named:"image1"),
              UIImage(named:"image2"),
              UIImage(named:"image3") ,
              UIImage(named:"image4") ,
              UIImage(named:"image5") ,
              UIImage(named:"image6"),
              UIImage(named:"image7"),
              UIImage(named:"image8") ,
              UIImage(named:"image9") ,
              UIImage(named:"image10")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func firstButton(_ sender: UIButton) {
        imgView.image = imgArray[0]
    }
    
    @IBAction func prevButton(_ sender: UIButton) {
        
         if (index < imgArray.count)
           {
             index = index - 1
             if (index == imgArray.count)
             {
               index = 0
             }
             imgView.image = imgArray[index]
           }
            
    }
        
    @IBAction func nextButton(_ sender: UIButton) {
     if (index < imgArray.count)
       {
         index = index + 1
         if (index == imgArray.count)
         {
           index = 0
         }
         imgView.image = imgArray[index]
       }
        
     }

    @IBAction func lastButton(_ sender: UIButton) {
        imgView.image = imgArray[imgArray.count-1]
    }
    
}

