//
//  ThreeRulesViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class ThreeRulesViewController: UIViewController {
    
    var game: Game!
    
    @IBOutlet var rulesGameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingBackroundImage()
        rulesGameLabel.text = game.rules.last
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
    }
}

private extension ThreeRulesViewController {
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "backroundImageRulesVC"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.3
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}
