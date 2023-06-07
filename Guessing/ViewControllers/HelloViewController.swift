//
//  HelloViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class HelloViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingBackround()
        
    }
   

}

extension HelloViewController {
    func settingBackround() {
        let backroundImage = UIImageView(image: UIImage(named: "Hello"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}
