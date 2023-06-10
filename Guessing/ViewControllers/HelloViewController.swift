//
//  HelloViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class HelloViewController: UIViewController {
    
    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        settingButtonStart()
        settingBackround()
    }
}

//MARK: - Extenstion for Hello
private extension HelloViewController {
    func settingButtonStart() {
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 120, y: 530, width: 150, height: 100)
        let image = UIImage(named: "startButtonpng")
        button.setBackgroundImage(image, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    @objc func buttonTapped() {
        performSegue(withIdentifier: "toGameList", sender: self)
    }
    
    func settingBackround() {
        let backroundImage = UIImageView(image: UIImage(named: "backGroundHello"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}
