//
//  TwoTabBarCotroller.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class TwoTabBarCotroller: UITabBarController {
    
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let twoRulesVC = viewController as? TwoRulesViewController {
                twoRulesVC.game = game
            } else {
                guard let twoGameVC = viewController as? TwoGameViewController else { return}
                twoGameVC.game = game
                
            }
        }
        
    }
    
}
