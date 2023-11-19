//
//  ViewController.swift
//  ColorizedAPP
//
//  Created by Александр Соколов on 19.11.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var colorView: UIView!
    
    
    @IBOutlet var rSlider: UISlider!
    @IBOutlet var gSlider: UISlider!
    @IBOutlet var bSlider: UISlider!
    
    @IBOutlet var rLabel: UILabel!
    @IBOutlet var gLabel: UILabel!
    @IBOutlet var bLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func redSliderValueChanged(_ sender: UISlider) {
    }
    
    
    @IBAction func greenSliderValueChanged(_ sender: UISlider) {
    }
    
    @IBAction func blueSliderValueChanged(_ sender: Any) {
    }
    
    
}

