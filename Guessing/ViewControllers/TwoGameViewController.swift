//
//  TwoGameViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class TwoGameViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var answerButtons: [UIButton]!
    
    //MARK: - Properties
    var game: Game!
    
    //MARK: - Private properties
    private var questionIndex = 0
    private var correctAnswers = 0
    private var attemptCount = 3
    
    
    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        settingBackroundImage()
        settingNavigationTitle()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.twoGameResult = correctAnswers
        resultVC.game = game
        resultVC.numberGame = 2
    }
    
    //MARK: - IBActions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let buttonText = sender.titleLabel?.text else { return }
        
            if buttonText == game.movieNames[questionIndex] {
                sender.tintColor = .systemGreen
                correctAnswers += 1
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    self.nextQuestion()
                }
            } else {
                sender.tintColor = .systemRed
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    self.showAlert(withTitle: "Wrong answer", andMessage: "You have \(self.attemptCount - 1) attempts left")
                }
        }
    }
}

//MARK: - Extenstion for QuestionViewController
private extension TwoGameViewController {
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
            self.attemptCount -= 1
            if self.attemptCount == 0 {
                self.performSegue(withIdentifier: "goTwoResult", sender: nil)
            } else {
                self.nextQuestion()
            }
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "GameVCBackground"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.3
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
    
    func settingNavigationTitle() {
        let titleLabel = UILabel()
        titleLabel.text = "Вопрос № \(questionIndex + 1)/ \(game.movieNames.count)"
        titleLabel.font = UIFont(name: "GillSans", size: 35)
        navigationController?.navigationBar.topItem?.titleView = titleLabel
    }
    
    func updateUI() {
        let totalProgress = Float(questionIndex) / Float(game.movieNames.count)
        questionProgressView.setProgress(totalProgress, animated: true)

        let currentMoviePicture = game.moviePictures[questionIndex]
        movieImage.image = UIImage(named: currentMoviePicture)
        
        settingNavigationTitle()
        
        answerButtons.forEach { $0.tintColor = .systemBlue }
        
        showSingleButtonAnswer(with: game.movieNames)
        
    }
    
     func showSingleButtonAnswer(with answers: [String]) {
        let count = min(game.movieNames.count, answerButtons.count)
        let randomIndices = Array(0..<count).shuffled()
        
        var hasCorrectAnswer = false
        
        for (button, index) in zip(answerButtons, randomIndices) {
            let movieName = answers[index]
            let _ = game.moviePictures[index]
            button.setTitle(movieName, for: .normal)
            button.tag = movieName == game.movieNames[questionIndex] ? 1 : 0
            
            if button.tag == 1 {
                hasCorrectAnswer = true
            }
        }
        
        if !hasCorrectAnswer {
            let randomButtonIndex = Int.random(in: 0..<count)
            answerButtons[randomButtonIndex].setTitle(game.movieNames[questionIndex], for: .normal)
            answerButtons[randomButtonIndex].tag = 1
        }
        
    }
    
     func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < game.movieNames.count{
            updateUI()
            return
        }
        performSegue(withIdentifier: "goTwoResult", sender: nil)
    }

}
