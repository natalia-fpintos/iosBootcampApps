//
//  ViewController.swift
//  CatFun
//
//  Created by Fernández Pintos, Natalia (Associate Software Developer) on 09/10/2018.
//  Copyright © 2018 Natalia Fernández. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var catLabel: UITextField!
    @IBOutlet weak var testLabel: UITextField!
    
    func updateLabelText(label: UITextField, value: String) {
        label.text = value
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("View did load!")
        updateLabelText(label: catLabel, value: "Hello!")
        updateLabelText(label: testLabel, value: "Bye!")
    }
    
}

