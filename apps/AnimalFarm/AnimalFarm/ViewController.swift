//
//  ViewController.swift
//  AnimalFarm
//
//  Created by Fernández Pintos, Natalia (Associate Software Developer) on 23/10/2018.
//  Copyright © 2018 Natalia Fernández. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound(named: "moo")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func meow(_ sender: UIButton) {
        meowSound.play()
    }
    
    @IBAction func bark(_ sender: UIButton) {
        woofSound.play()
    }
    
    @IBAction func moo(_ sender: UIButton) {
        mooSound.play()
    }
    
}

