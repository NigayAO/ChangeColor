//
//  ViewController.swift
//  ChangeColor
//
//  Created by Alik Nigay on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var viewForResult: UIView!
    
    @IBOutlet weak var redColor: UILabel!
    @IBOutlet weak var greenColor: UILabel!
    @IBOutlet weak var blueColor: UILabel!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumTrackTintColor = .systemRed
        greenSlider.minimumTrackTintColor = .systemGreen
        blueSlider.minimumTrackTintColor = .systemBlue
        
        setValue()
        
    }
    
    override func viewWillLayoutSubviews() {
        viewForResult.layer.cornerRadius = 20
    }

    @IBAction func changeSlider() {
        setValue()
        setColor()
    }
    
    private func setValue() {
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        viewForResult.backgroundColor = color
    }
    
    
}

