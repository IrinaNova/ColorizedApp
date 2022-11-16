//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Irunchik on 27.10.22.
//

import UIKit

class ColorViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    var colorView: UIColor!
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    var alpha: CGFloat = 0
    
    var delegate: ColorViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20
        mainView.backgroundColor = colorView
        setupInitialValueForSlider()
        setupLabels()
    }
    
    // MARK: - IB Action
   
    @IBAction func SliderAction(_ sender: UISlider) {
        setupColorMainView()
        colorView = mainView.backgroundColor
        switch sender {
        case redColorSlider:
            redColorLabel.text = string(from: redColorSlider)
        case greenColorSlider:
            greenColorLabel.text = string(from: greenColorSlider)
        default:
            blueColorLabel.text = string(from: blueColorSlider)
        }
    }
    @IBAction func doneButtonPressed() {
        delegate.setViewColor(color: colorView)
        dismiss(animated: true)
    }
    
    // MARK: -  Private Methods
    
    private func setupInitialValueForSlider() {
        colorView.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        redColorSlider.value = Float(red)
        greenColorSlider.value = Float(green)
        blueColorSlider.value = Float(blue)
    }
    
    private func setupLabels(){
        redColorLabel.text = string(from: redColorSlider)
        greenColorLabel.text = string(from: greenColorSlider)
        blueColorLabel.text = string(from: blueColorSlider)
    }
    
    private func setupColorMainView(){
        mainView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 0.9
        )
    }
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    


}

