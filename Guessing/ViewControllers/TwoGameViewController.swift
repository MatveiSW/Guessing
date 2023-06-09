//
//  TwoGameViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class TwoGameViewController: UIViewController {

    var game: Game!
    
   
    
//MARK: - IBOutlets
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var answerButtons: [UIButton]!
    
    
    private var questionIndex = 0
    private var correctAnswers = 0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        settingBackroundImage()
    }
    

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let buttonText = sender.titleLabel?.text else { return }
        
        let isRightAnswerSelected = buttonText == game.movieNames[questionIndex]
        //        sender.tintColor = isRightAnswerSelected
        //        ? .green
        //        : .red
        //        correctAnswers += isRightAnswerSelected
        //        ? 1
        //        : 0
        //        showAlert(isRightAnswerSelected)
        //    }
        
        if buttonText == game.movieNames[questionIndex] {
            sender.tintColor = .systemGreen
            correctAnswers += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { // Задержка в 1 секунду
                        self.nextQuestion()
                    }
        } else {
            sender.tintColor = .systemRed
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.showAlert(isRightAnswerSelected)
            }
        }
    }
}

//MARK: - Extenstion for QuestionViewController
private extension TwoGameViewController {
    func settingBackroundImage() {
        let backroundImage = UIImageView(image: UIImage(named: "GameVCBackground"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.3
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }
    
    func updateUI() {
        let totalProgress = Float(questionIndex) / Float(game.movieNames.count)

        
        questionProgressView.setProgress(totalProgress, animated: true)
//
        // Set navigation title
//        title = "Qustion № \(questionIndex + 1) from \(game.movieNames.count)"
//
        let currentMoviePicture = game.moviePictures[questionIndex]
        movieImage.image = UIImage(named: currentMoviePicture)
        answerButtons.forEach { $0.tintColor = .systemBlue }
        showSingleButtonAnswer(with: game.movieNames)
       
    }

    private func showSingleButtonAnswer(with answers: [String]) {
        let count = min(answerButtons.count, game.movieNames.count)
            let randomIndices = Array(0..<count).shuffled()
            
            for (button, index) in zip(answerButtons, randomIndices) {
                let movieName = game.movieNames[index]
                let _ = game.moviePictures[index]
                button.setTitle(movieName, for: .normal)
                button.tag = 0
            }
    }
    

  private func showAlert(_ isSuccess: Bool) {
        let alert = UIAlertController(
            title: isSuccess
            ? "Success"
            : "Wrong answer",
            message: nil,
            preferredStyle: .alert
        )

        alert.addAction(
            UIAlertAction(
                title: "Ok",
                style: isSuccess
                ? .default
                : .destructive
            ) { [unowned self] _ in
                nextQuestion()
            }
        )
        present(alert, animated: true)
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < game.movieNames.count{
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "goTwoResult", sender: nil)
    }
}
