//
//  ViewController.swift
//  Pusheen
//
//  Created by Fernández Pintos, Natalia (Associate Software Developer) on 17/10/2018.
//  Copyright © 2018 Natalia Fernández. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    
    @IBAction func displayPusheen(_ sender: UIButton) {
        image.image = UIImage(named: "pusheen")
    }
    
    @IBAction func displayFlowers(_ sender: UIButton) {
        image.image = UIImage(named: "pusheenFlowers")
    }
    
    @IBAction func displayPusheenosaurus(_ sender: UIButton) {
        image.image = UIImage(named: "pusheenosaurus")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}

