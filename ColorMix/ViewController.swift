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
        if sender.isOn {
            colorView.backgroundColor = .red
        } else {
            colorView.backgroundColor = .black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        colorView.backgroundColor = .black
    }


}

