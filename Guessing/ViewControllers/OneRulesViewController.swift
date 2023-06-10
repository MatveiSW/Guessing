//
//  OneRulesViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class OneRulesViewController: UIViewController {
    
    var game: Game!
    
    @IBOutlet var rulesOneGameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingBackroundImage()
        rulesOneGameLabel.text = game.rules.first
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
    }
}

private extension OneRulesViewController {
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "backgroundRules"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.5
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}
