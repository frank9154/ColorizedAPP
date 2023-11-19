//
//  ViewController.swift
//  ColorizedAPP
//
//  Created by Александр Соколов on 19.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet var colorView: UIView!
    
    
    @IBOutlet var rSlider: UISlider!
    @IBOutlet var gSlider: UISlider!
    @IBOutlet var bSlider: UISlider!
    
    @IBOutlet var rLabel: UILabel!
    @IBOutlet var gLabel: UILabel!
    @IBOutlet var bLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        setupSliders()
    }
    
    private func setupSliders () {
        rSlider.minimumValue = 0
        rSlider.maximumValue = 1
        rSlider.value = 0
        updateColor()
        
        gSlider.minimumValue = 0
        gSlider.maximumValue = 1
        gSlider.value = 0
        updateColor()
        
        bSlider.minimumValue = 0
        bSlider.maximumValue = 1
        bSlider.value = 0
        updateColor()
        
    
    }

    @IBAction func redSliderValueChanged(_ sender: UISlider) {
        updateColor()
    }
    
    
    @IBAction func greenSliderValueChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func blueSliderValueChanged(_ sender: UISlider) {
        updateColor()
    }
    
    private func updateColor() {
        let red = CGFloat(rSlider.value)
        let green = CGFloat(gSlider.value)
        let blue = CGFloat(bSlider.value)
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        rLabel.text = String(format: "%.2f", red)
        gLabel.text = String(format: "%.2f", green)
        bLabel.text = String(format: "%.2f", blue)
    }
    
}

