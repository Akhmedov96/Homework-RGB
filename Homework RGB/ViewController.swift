//
//  ViewController.swift
//  Homework RGB
//
//  Created by Нахид  Ахмедов on 03/05/2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var rgbView: UIView!
    @IBOutlet var sliderRGB: UIStackView!
    @IBOutlet var sliderValue: UIStackView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
        rgbView.backgroundColor = .systemBlue
        rgbView.layer.cornerRadius = 10
        
        setColor()
        
        redSliderLabel.text = string(from: redSlider)
        greenSliderLabel.text = string(from: greenSlider)
        blueSliderLabel.text = string(from: blueSlider)
    }
    
    @IBAction func SliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redSliderLabel.text = string(from: redSlider)
        case greenSlider:
            greenSliderLabel.text = string(from: greenSlider)
        default:
            blueSliderLabel.text = string(from: blueSlider)
        }
        
        print(blueSliderLabel.text ?? "")
    }
    
   private func setupSlider() {
       redSlider.value = 0.05
       redSlider.minimumValue = 0
       redSlider.maximumValue = 1
       redSlider.minimumTrackTintColor = .red
       
       greenSlider.value = 0.27
       greenSlider.minimumValue = 0
       greenSlider.maximumValue = 1
       greenSlider.minimumTrackTintColor = .green
       
       blueSlider.value = 0.49
       blueSlider.minimumValue = 0
       blueSlider.maximumValue = 1
       blueSlider.minimumTrackTintColor = .blue
    }

    private func setColor() {
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
        )
    }
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

