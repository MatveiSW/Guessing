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
    var indexCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        actorImage.image = UIImage(named: game.actorNames[indexCount])
        
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        if nameActorTF.text == game.actorNames[indexCount] {
            indexCount += 1
            actorImage.image = UIImage(named: game.actorNames[indexCount])
        } else if indexCount == 5 {
           performSegue(withIdentifier: "goThreeResult", sender: self)
        }
        
    }
    
    

}
