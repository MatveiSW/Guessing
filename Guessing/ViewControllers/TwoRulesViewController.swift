//
//  TwoRulesViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class TwoRulesViewController: UIViewController {

    
    var game: Game!
    
    
    @IBOutlet var rulesTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingBackroundImage()
        rulesTextView.text = game.rules[1]
        rulesTextView.backgroundColor = .clear
    }
    

    

}

private extension TwoRulesViewController {
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "RulesVCBackground"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.3
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}
