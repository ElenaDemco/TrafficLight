//
//  ViewController.swift
//  TrafficLight
//
//  Created by Yelena Demchenko on 19.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private enum LightTraffic {
        case red
        case yellow
        case green
    }
    
    private var actualLight = LightTraffic.red
    
    private let lightTrafficOn = 1.0
    private let lightTrafficOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 20
        
        redLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        
        redLight.alpha = lightTrafficOff
        yellowLight.alpha = lightTrafficOff
        greenLight.alpha = lightTrafficOff
    }
    
    @IBAction func startButtonDidTapped() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch actualLight {
        case .red:
            redLight.alpha = lightTrafficOn
            greenLight.alpha = lightTrafficOff
            actualLight = .yellow
        case .yellow:
            redLight.alpha = lightTrafficOff
            yellowLight.alpha = lightTrafficOn
            actualLight = .green
        case .green:
            yellowLight.alpha = lightTrafficOff
            greenLight.alpha = lightTrafficOn
            actualLight = .red
        }
    }
}

