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
    }
    
    override func viewWillLayoutSubviews() {
        colorizedView.backgroundColor = UIColor(red: redSliderCurrentValue, green: greenSliderCurrentValue, blue: blueSliderCurrentValue, alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        
    }
    
    @IBAction func greenSliderAction() {
        
    }
    
    @IBAction func blueSliderAction() {
        
    }
}

