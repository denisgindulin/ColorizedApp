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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

