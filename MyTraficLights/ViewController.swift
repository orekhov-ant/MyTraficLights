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
    private let lightOnValue: CGFloat = 1
    private let lightOfValue: CGFloat = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeLightButton.layer.cornerRadius = 10
        activeLight = "none"
        
        redLightView.alpha = lightOfValue
        orangeLightView.alpha = lightOfValue
        greenLightView.alpha = lightOfValue
        
        redLightView.layer.cornerRadius = 60
        orangeLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
    }

    @IBAction func changeLightButtonDidTapped() {
        changeLightButton.setTitle("NEXT", for: .normal)
        toggleLightColor()
    }
    
    private func toggleLightColor() {
        switch activeLight {
        case "red":
            redLightView.alpha = lightOfValue
            orangeLightView.alpha = lightOnValue
            activeLight = "orange"
        case "orange":
            orangeLightView.alpha = lightOfValue
            greenLightView.alpha = lightOnValue
            activeLight = "green"
        case "green":
            greenLightView.alpha = lightOfValue
            redLightView.alpha = lightOnValue
            activeLight = "red"
        default:
            redLightView.alpha = lightOnValue
            activeLight = "red"
        }
    }
}

