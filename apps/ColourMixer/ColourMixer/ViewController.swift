//
//  ViewController.swift
//  ColourMixer
//
//  Created by Fernández Pintos, Natalia (Associate Software Developer) on 24/10/2018.
//  Copyright © 2018 Natalia Fernández. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!
    @IBOutlet var colourView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        styleViewBorder(view: colourView, color: UIColor.black, width: 3, cornerRadius: 10)
        setViewBackgroundColour()
    }

    @IBAction func toggleRedSwitch(_ sender: UISwitch) {
        redSlider.isEnabled.toggle()
    }
    
    @IBAction func toggleGreenSwitch(_ sender: UISwitch) {
        greenSlider.isEnabled.toggle()
    }

    @IBAction func toggleBlueSwitch(_ sender: UISwitch) {
        blueSlider.isEnabled.toggle()
    }
    
    @IBAction func slideKnob(_ sender: UISlider) {
        setViewBackgroundColour()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        resetSlider(slider: redSlider)
        resetSlider(slider: greenSlider)
        resetSlider(slider: blueSlider)
        redSwitch.setOn(false, animated: true)
        greenSwitch.setOn(false, animated: true)
        blueSwitch.setOn(false, animated: true)
        setViewBackgroundColour()
    }
    
    func resetSlider(slider: UISlider) {
        slider.value = 0
        slider.isEnabled = false
    }
    
    func colourMix(red: Float, green: Float, blue: Float) -> UIColor {
        return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }
    
    func setViewBackgroundColour() {
        colourView.backgroundColor = colourMix(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    
    func styleViewBorder(view: UIView, color: UIColor, width: CGFloat, cornerRadius: CGFloat) {
        view.layer.borderColor = color.cgColor
        view.layer.borderWidth = width
        view.layer.cornerRadius = cornerRadius
    }
}
