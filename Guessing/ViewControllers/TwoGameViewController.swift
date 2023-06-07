//
//  TwoGameViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class TwoGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        settingBackroundImage()
    }
    

    

}

private extension TwoGameViewController {
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "GameVCBackground"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.3
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}
