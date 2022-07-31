//
//  ViewController.swift
//  TrafficLights
//
//  Created by Алексей on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightsRed: UIView!
    @IBOutlet var lightsYellow: UIView!
    @IBOutlet var lightsGreen: UIView!
    @IBOutlet var buttonAction: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightsRed.isHidden = true
        lightsRed.layer.cornerRadius = 60
        lightsYellow.isHidden =  true
        lightsYellow.layer.cornerRadius = 60
        lightsGreen.isHidden = true
        lightsGreen.layer.cornerRadius = 60
    }
    @IBAction func buttonPressed() {
        buttonAction.setTitle("Next", for: .normal)
        
        if lightsRed.isHidden && lightsYellow.isHidden{
            lightsRed.isHidden = false
            lightsGreen.isHidden = true
        }else if lightsYellow.isHidden && lightsGreen.isHidden{
            lightsYellow.isHidden = false
            lightsRed.isHidden = true
        }
        else if lightsRed.isHidden && lightsGreen.isHidden{
            lightsGreen.isHidden = false
            lightsYellow.isHidden = true
        }
    }
}

