//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Денис Гиндулин on 01.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    //MARK: - Private Properties
    private var redSliderCurrentValue = CGFloat(8 / 256)
    private var greenSliderCurrentValue = CGFloat(0.6)
    private var blueSliderCurrentValue = CGFloat(0.3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupRedValueLabel()
        setupGreenSlider()
        setupGreenValueLabel()
        setupBlueSlider()
        setupBlueValueLabel()
    }
    
    override func viewWillLayoutSubviews() {
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSliderCurrentValue), green: greenSliderCurrentValue, blue: blueSliderCurrentValue, alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        redSliderCurrentValue = CGFloat(redSlider.value)
        
    }
    
    @IBAction func greenSliderAction() {
        greenSliderCurrentValue = CGFloat(greenSlider.value)

    }
    
    @IBAction func blueSliderAction() {
        blueSliderCurrentValue = CGFloat(blueSlider.value)
    }
    
    //MARK: - Private Methods
    private func setupRedSlider () {
        redSlider.value = 200
    }
    
    private func setupRedValueLabel () {
        redValueLabel.text = "красная: " + redSlider.value.formatted()
    }
    
    private func setupGreenSlider () {
        greenSlider.value = 180
    }
    
    private func setupGreenValueLabel () {
        greenValueLabel.text = "зеленая: " + greenSlider.value.formatted()
    }
    
    private func setupBlueSlider () {
        blueSlider.value = 120
    }
    
    private func setupBlueValueLabel () {
        blueValueLabel.text = "синяя: " + blueSlider.value.formatted()
    }
}

