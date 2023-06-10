//
//  OneTabBarController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class OneTabBarController: UITabBarController {
    
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let oneRulesVC = viewController as? OneRulesViewController {
                oneRulesVC.game = game
            } else {
                guard let oneGameVC = viewController as? OneGameViewController else { return}
                oneGameVC.game = game
                
            }
        }
    }
    
}
