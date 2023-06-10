//
//  ResultViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    
    
    
    //MARK: - IBOutlets
    
    @IBOutlet var currentAnswerCountLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultImage: UIImageView!
    @IBOutlet var playAgainButton: UIButton!
    
    
    
    
    //MARK: - Properties
    var game: Game!
    var threeGameResult: Int!
    var oneGameResult: Int!
    var twoGameResult: Int!
    var numberGame = 0
    
    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        getResult()
        addBackroundColor()
        playAgainButton.layer.cornerRadius = 15
    }
    
    //MARK: - Private functions
    private func getInfoResult() {
        if threeGameResult <= 1 {
            resultLabel.text = "\(game.resultActorGames[0])"
            resultImage.image = UIImage(named: game.resultImage[0])
        } else if threeGameResult <= 3 {
            resultLabel.text = "\(game.resultActorGames[1])"
            resultImage.image = UIImage(named: game.resultImage[1])
        } else if threeGameResult <= 5 {
            resultLabel.text = "\(game.resultActorGames[2])"
            resultImage.image = UIImage(named: game.resultImage[2])
        }
    }
    
    private func secondGameResult() {
        if twoGameResult <= 1 {
            resultLabel.text = "\(game.guessTheMovie[0])"
            resultImage.image = UIImage(named: game.secondGameImages[0])
        } else if twoGameResult <= 3 {
            resultLabel.text = "\(game.guessTheMovie[1])"
            resultImage.image = UIImage(named: game.secondGameImages[1])
        } else if twoGameResult <= 5 {
            resultLabel.text = "\(game.guessTheMovie[2])"
            resultImage.image = UIImage(named: game.secondGameImages[2])
        }
    }
    
}

private extension ResultViewController {
    func addBackroundColor() {
        let backroundImage = UIImageView(image: UIImage(named: "resultBackround"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.1
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
    func getResult() {
        if numberGame == 1 {
            resultLabel.text = "На сколько бы вопросов ты не ответил, ты крут! А сейчас сыграй в другую игру или просто возьми фильм из подборки и проведи вечер хорошо!"
            resultImage.image = UIImage(named: "steaveJobs2")
            currentAnswerCountLabel.text = "Ты ответил на \(oneGameResult ?? 0) вопросов из 5"
        } else if numberGame == 2 {
            secondGameResult()
            currentAnswerCountLabel.text = "Ты правильно ответил на \(twoGameResult ?? 0) из 5 вопросов!"
        } else if numberGame == 3 {
            getInfoResult()
            currentAnswerCountLabel.text = "Ты правильно ответил на \(threeGameResult ?? 0) из 5 вопросов!"
        }
    }
}

