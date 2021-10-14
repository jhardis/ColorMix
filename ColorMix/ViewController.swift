//
//  ViewController.swift
//  ColorMix
//
//  Created by Jonathan E. Hardis on 10/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func sliderChanged3(_ sender: Any) {
        updateColor()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn { red = CGFloat(redSlider.value) }
        if greenSwitch.isOn { green = CGFloat(greenSlider.value) }
        if blueSwitch.isOn { blue = CGFloat(blueSlider.value) }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        updateColor()
    }


}

