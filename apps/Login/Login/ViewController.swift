//
//  ViewController.swift
//  Login
//
//  Created by Fernández Pintos, Natalia (Associate Software Developer) on 04/11/2018.
//  Copyright © 2018 Natalia Fernández. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func login(_ sender: UIButton) {
        if username.text != "" && password.text != "" {
            performSegue(withIdentifier: "homeScreen", sender: sender)
        }
    }
    
    @IBAction func forgotDetails(_ sender: UIButton) {
        performSegue(withIdentifier: "homeScreen", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "homeScreen" {
            if let button = sender as? UIButton {
                if button.titleLabel?.text == "Login" {
                    segue.destination.title = username.text
                } else {
                    segue.destination.title = button.titleLabel?.text
                }
            }
        }
    }
    
}

