//
//  OneTabBarController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class OneTabBarController: UITabBarController {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
