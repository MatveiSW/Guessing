//
//  OneGameViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class OneGameViewController: UIViewController {
    var game: Game!
    var ingexCount = 0
    
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var filmImageView: UIImageView!
    @IBOutlet var sliderRating: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingBackroundImage()
        filmImageView.image = UIImage(named: String(game.ratingIMDB[ingexCount]))
        sliderRaring()
        
    }
    
    @IBAction func answerButtonTapped() {
        let valueSlider = round(sliderRating.value * 10) / 10
        
        if valueSlider == game.ratingIMDB[ingexCount] {
            ingexCount += 1
            filmImageView.image = UIImage(named: String(game.ratingIMDB[ingexCount]))
        }
        
    }
    @IBAction func sliderRaring() {
        ratingLabel.text = String(format: "%.1f", sliderRating.value)

    }
    
    
    
    
    
    
    
    
    
}

private extension OneGameViewController {
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "backgroundGame"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.5
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}
