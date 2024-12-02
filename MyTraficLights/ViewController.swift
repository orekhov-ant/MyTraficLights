//
//  ViewController.swift
//  MyTraficLights
//
//  Created by Антон Орехов on 02.12.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    
    @IBOutlet var orangeLightView: UIView!
    
    @IBOutlet var greenLightView: UIView!
        
    @IBOutlet var changeLightButton: UIButton!
    
    private var activeLight: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        activeLight = "none"
        redLightView.alpha = 0.3
        orangeLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        changeLightButton.layer.cornerRadius = 10
    }

    @IBAction func changeLightButtonDidTapped() {
        changeLightButton.setTitle("NEXT", for: .normal)
        toggleLightColor()
    }
    
    private func toggleLightColor() {
        switch activeLight {
        case "red":
            redLightView.alpha = 0.3
            orangeLightView.alpha = 1
            activeLight = "orange"
        case "orange":
            orangeLightView.alpha = 0.3
            greenLightView.alpha = 1
            activeLight = "green"
        case "green":
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            activeLight = "red"
        default:
            redLightView.alpha = 1
            activeLight = "red"
        }
        
    }
    
}

