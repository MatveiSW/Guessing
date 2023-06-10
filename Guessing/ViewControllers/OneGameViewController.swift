//
//  OneGameViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class OneGameViewController: UIViewController {
    
    //MARK: - IBActions
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var filmImageView: UIImageView!
    @IBOutlet var sliderRating: UISlider!
    
    //MARK: - Properties
    var game: Game!
    private var indexCount = 0
    private var currentAnswer = 0
    private var attemtCount = 3
    
    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        settingBackroundImage()
        settingNavigationTitle()
        filmImageView.image = UIImage(named: String(game.ratingIMDB[indexCount]))
        sliderRaring()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.numberGame = 1
        resultVC.game = game
        resultVC.oneGameResult = currentAnswer
    }
    
    
    //MARK: - IBActions
    @IBAction func answerButtonTapped() {
        checkAnswer()
        settingNavigationTitle()
    }
    
    @IBAction func skipButtonTapped() {
        if indexCount < game.ratingIMDB.count - 1 {
            indexCount += 1
            filmImageView.image = UIImage(named: String(game.ratingIMDB[indexCount]))
        } else {
            performSegue(withIdentifier: "goOneResult", sender: self)
        }
        settingNavigationTitle()
    }
    
    @IBAction func sliderRaring() {
        ratingLabel.text = String(format: "%.1f", sliderRating.value)
    }
    
}

//MARK: - Extension for OneGameViewController
private extension OneGameViewController {
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "backgroundGame"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.5
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
    
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
        }
        
        alert.addAction(action)
        
        self.present(alert, animated: true, completion:nil)
    }
    
    func settingNavigationTitle() {
        let titleLabel = UILabel()
        titleLabel.text = "Вопрос №\(indexCount + 1)/5"
        titleLabel.font = UIFont(name: "GillSans", size: 25)
        navigationController?.navigationBar.topItem?.titleView = titleLabel
    }
    
    func checkAnswer() {
        let valueSlider = round(sliderRating.value * 10) / 10
        if indexCount < game.ratingIMDB.count - 1 {
            if attemtCount > 1 {
                if valueSlider == game.ratingIMDB[indexCount] {
                    indexCount += 1
                    currentAnswer += 1
                    filmImageView.image = UIImage(named: String(game.ratingIMDB[indexCount]))
                } else if valueSlider > game.ratingIMDB[indexCount] {
                    attemtCount -= 1
                    showAlert(withTitle: "Осталось \(attemtCount) попытки", andMessage: "Чуть меньше!")
                } else {
                    attemtCount -= 1
                    showAlert(withTitle: "Осталось \(attemtCount) попытки", andMessage: "Чуть больше!")
                }
            } else {
                performSegue(withIdentifier: "goOneResult", sender: self)
            }
        } else {
            performSegue(withIdentifier: "goOneResult", sender: self)
        }
    }
}
