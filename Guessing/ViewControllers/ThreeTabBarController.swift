//
//  ThreeTabBarController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class ThreeTabBarController: UITabBarController {
    
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let threeRulesVC = viewController as? ThreeRulesViewController {
                threeRulesVC.game = game
            } else {
                guard let threeGameVC = viewController as? ThreeGameViewController else { return}
                threeGameVC.game = game
            }
            
        }
        
    }
    
}
