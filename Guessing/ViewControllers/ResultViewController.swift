//
//  ResultViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var currentAnswerCountLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultImage: UIImageView!
    
    var game: Game!
    var threeGameResult: Int!
    var oneGameResult: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        getInfoResult()
//        currentAnswerCountLabel.text = "Ты правильно ответил на \(threeGameResult ?? 0) из 5 вопросов!"
        addBackroundColor()
    }
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

   

}

extension ResultViewController {
    func addBackroundColor() {
        let backroundImage = UIImageView(image: UIImage(named: "resultBackround"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.1
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
}
