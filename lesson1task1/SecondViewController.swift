//
//  SecondViewController.swift
//  lesson1task1
//
//  Created by Владислав Лазарев on 24/07/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var flag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

      startButton.layer.cornerRadius = 10
     
      redView.layer.cornerRadius = redView.frame.height / 2
      redView.alpha = 0.3
      yellowView.alpha = 0.3
      yellowView.layer.cornerRadius = yellowView.frame.height / 2
        
      greenView.alpha = 0.3
      greenView.layer.cornerRadius = greenView.frame.height / 2
      
        
        
    }


    @IBAction func startButtonClick(_ sender: UIButton) {
        flag += 1
        switch flag {
        case 1:
            redView.alpha = 1
            greenView.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 1
        case 3:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            flag = 0
        default:
            break
        }
        
    }
    
}
