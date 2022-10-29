//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Irunchik on 27.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var mainView: UIView!
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        setupLabels()
        setupMainView()
    }
    
    // MARK: - IB Action
    @IBAction func redColorSliderAction() {
        redColorLabel.text = String(round(redColorSlider.value*100)/100)
        setupMainView()
    }
    
    @IBAction func greenColorSliderAction() {
        greenColorLabel.text = String(round(greenColorSlider.value*100)/100)
        setupMainView()
    }
    
    @IBAction func blueColorSliderAction() {
        blueColorLabel.text = String(round(blueColorSlider.value*100)/100)
        setupMainView()
    }
    
    // MARK: -  Private Methods
    private func setupSliders() {
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
        redColorSlider.value = 0.05
        redColorSlider.minimumTrackTintColor = .red
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
        greenColorSlider.value = 0.27
        greenColorSlider.minimumTrackTintColor = .green
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
        blueColorSlider.value = 0.49
        blueColorSlider.minimumTrackTintColor = .blue
        
    }
    
    private func setupLabels(){
        redColorLabel.text = redColorSlider.value.formatted()
        greenColorLabel.text = greenColorSlider.value.formatted()
        blueColorLabel.text = blueColorSlider.value.formatted()
        
    }
    
    private func setupMainView(){
        mainView.layer.cornerRadius = 20
        let redValue = CGFloat(redColorSlider.value)
        let greenValue = CGFloat(greenColorSlider.value)
        let blueValue = CGFloat(blueColorSlider.value)
        mainView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 0.9)
        
    }
    


}

