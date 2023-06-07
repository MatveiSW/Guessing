//
//  ThreeGameViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class ThreeGameViewController: UIViewController {
    
    @IBOutlet var actorImage: UIImageView!
    
    @IBOutlet var nameActorTF: UITextField!
    
    var game: Game!
    
    private var indexCount = 0
    private var attemtCount = 3
    private var currentAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingNavigationTitle()
        settingBackroundImage()
        
        actorImage.image = UIImage(named: game.actorNames[indexCount])
        actorImage.alpha = 1.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.threeGameResult = currentAnswer
        resultVC.game = game
    }
    
    @IBAction func skipButtonTapped(_ sender: UIButton) {
        indexCount += 1
        nameActorTF.text = ""
        if indexCount < game.actorNames.count {
            settingNavigationTitle()
            animation(image: actorImage)
            actorImage.image = UIImage(named: game.actorNames[indexCount])
            navigationController?.navigationBar.topItem?.title = "Вопрос №\(indexCount + 1)/5"
        } else {
            performSegue(withIdentifier: "goThreeResult", sender: self)
        }
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        checkAnswer()
    }
}

private extension ThreeGameViewController {
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
            self.attemtCount -= 1
            self.nameActorTF.text = ""
            if self.attemtCount == 0 {
                self.performSegue(withIdentifier: "goThreeResult", sender: nil)
            }
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func animation(image: UIImageView) {
        let newAlpha: CGFloat = actorImage.alpha == 1.0 ? 0.0 : 1.0
        UIView.animate(withDuration: 0.2, animations: {
            self.actorImage.alpha = newAlpha
        }) { (_) in
            self.actorImage.alpha = 1.0
        }
    }
    
    func checkAnswer() {
        if indexCount < game.actorNames.count {
            if nameActorTF.text == game.actorNames[indexCount]  {
                indexCount += 1
                currentAnswer += 1
                nameActorTF.text = ""
                if indexCount < game.actorNames.count {
                    settingNavigationTitle()
                    animation(image: actorImage)
                    actorImage.image = UIImage(named: game.actorNames[indexCount])
                    navigationController?.navigationBar.topItem?.title = "Вопрос №\(indexCount + 1)/5"
                } else {
                    performSegue(withIdentifier: "goThreeResult", sender: self)
                }
            } else {
                if nameActorTF.text?.isEmpty == false {
                    showAlert(
                        withTitle: "Ошибка!🥲",
                        andMessage: "У вас осталось \(attemtCount - 1) попытки(а)"
                    )
                }
            }
        } else {
            performSegue(withIdentifier: "goThreeResult", sender: self)
        }
        
    }
}

private extension ThreeGameViewController {
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "backroundImageGameVC"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.3
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}

private extension ThreeGameViewController {
    func settingNavigationTitle() {
        navigationController?.navigationBar.topItem?.hidesBackButton = true
        navigationController?.navigationBar.topItem?.largeTitleDisplayMode = .never
        let titleLabel = UILabel()
        titleLabel.text = "Вопрос №\(indexCount + 1)/5"
        titleLabel.font = UIFont(name: "GillSans", size: 25)
        navigationController?.navigationBar.topItem?.titleView = titleLabel
    }
}
