//
//  ViewController.swift
//  ColorMix
//
//  Created by Geraldine Jones on 2/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        
        colorView.backgroundColor = .clear
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateControls()
    }
       
        func updateColor() {
            var red: CGFloat = 0
            var green: CGFloat = 0
            var blue: CGFloat = 0
            
            if redSwitch.isOn {
                red = CGFloat(redSlider.value)
            }
            if greenSwitch.isOn {
                green = CGFloat(greenSlider.value)
            }
            if blueSwitch.isOn {
                blue = CGFloat(blueSlider.value)
            }
            
            let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
            colorView.backgroundColor = color
        }
        
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
        
    }
    @IBAction func reset(_ sender: UIButton) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        updateColor()
        updateControls()
    }
    
    func updateControls () {
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }
}

