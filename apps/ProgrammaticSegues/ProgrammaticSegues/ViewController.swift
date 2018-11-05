//
//  ViewController.swift
//  ProgrammaticSegues
//
//  Created by Fernández Pintos, Natalia (Associate Software Developer) on 30/10/2018.
//  Copyright © 2018 Natalia Fernández. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // The switch word is a keyword, so we have backticks to use it as variable name
    @IBOutlet var `switch`: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func doggo(_ sender: UIButton) {
        if `switch`.isOn {
            performSegue(withIdentifier: "dogSegue", sender: nil)
        }
    }
    
    @IBAction func dino(_ sender: UIButton) {
        
    }
    
}

