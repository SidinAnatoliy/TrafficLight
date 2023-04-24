//
//  ViewController.swift
//  TrafficLight
//
//  Created by Анатолий Сидин on 21.04.2023.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var trafficButton: UIButton!
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeViewsAlpha(0.3)
        changeCornerRadiusViews(75)
        trafficButton.layer.cornerRadius = 10
    }
    
    @IBAction func trafficButtonTapped() {
        trafficButton.setTitle("Next", for: .normal)
        count += 1
        switch count {
        case 1:
            greenView.alpha = CGFloat(0.3)
            redView.alpha = CGFloat(1)
        case 2:
            redView.alpha = CGFloat(0.3)
            yellowView.alpha = CGFloat(1)
        default:
            yellowView.alpha = CGFloat(0.3)
            greenView.alpha = CGFloat(1)
            count = 0
        }
        
        
    }
    
    
    private func changeViewsAlpha(_ alpha: Double) {
        redView.alpha = CGFloat(alpha)
        yellowView.alpha = CGFloat(alpha)
        greenView.alpha = CGFloat(alpha)
    }
    
    private func changeCornerRadiusViews(_ radius: Int) {
        redView.layer.cornerRadius = CGFloat(radius)
        yellowView.layer.cornerRadius = CGFloat(radius)
        greenView.layer.cornerRadius = CGFloat(radius)
    }
}

