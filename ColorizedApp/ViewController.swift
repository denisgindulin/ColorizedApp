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
    private var redSliderCurrentValue = CGFloat()
    private var greenSliderCurrentValue = CGFloat()
    private var blueSliderCurrentValue = CGFloat()
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupColorizedViewBorder()
        
        setupRedSlider()
        setupRedValueLabel()
        
        setupGreenSlider()
        setupGreenValueLabel()
        
        setupBlueSlider()
        setupBlueValueLabel()
    }
    
    override func viewWillLayoutSubviews() {
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    //MARK: - IBActions
    @IBAction func redSliderAction() {
        redSliderCurrentValue = CGFloat(redSlider.value)
        setupRedValueLabel()
    }
    
    @IBAction func greenSliderAction() {
        greenSliderCurrentValue = CGFloat(greenSlider.value)
        setupGreenValueLabel()
    }
    
    @IBAction func blueSliderAction() {
        blueSliderCurrentValue = CGFloat(blueSlider.value)
        setupBlueValueLabel()
    }
    
    //MARK: - Private Methods
    private func setupColorizedViewBorder() {
        colorizedView.layer.borderColor = UIColor.gray.cgColor
        colorizedView.layer.borderWidth = 2
    }
    
    private func setupRedSlider () {
        redSlider.value = 0.5
    }
    
    private func setupRedValueLabel () {
        redValueLabel.text = "красная: " + Int(redSlider.value * 255).formatted()
    }
    
    private func setupGreenSlider () {
        greenSlider.value = 0.5
    }
    
    private func setupGreenValueLabel () {
        greenValueLabel.text = "зеленая: " + Int(greenSlider.value * 255).formatted()
    }
    
    private func setupBlueSlider () {
        blueSlider.value = 0.5
    }
    
    private func setupBlueValueLabel () {
        blueValueLabel.text = "синяя: " + Int(blueSlider.value * 255).formatted()
    }
}

