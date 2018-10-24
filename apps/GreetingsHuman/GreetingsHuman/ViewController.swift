//
//  ViewController.swift
//  GreetingsHuman
//
//  Created by Fernández Pintos, Natalia (Associate Software Developer) on 17/10/2018.
//  Copyright © 2018 Natalia Fernández. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var greetingLabel: UILabel!
    @IBAction func sayHello(_ sender: UIButton) {
        let name = nameTextField.text!
        greetingLabel.text = "Greetings, \(name)!!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    
}

