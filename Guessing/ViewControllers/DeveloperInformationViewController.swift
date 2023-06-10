//
//  FirstDeveloperViewController.swift
//  Guessing
//
//  Created by Денис on 10/06/2023.
//

import UIKit

class DeveloperInformationViewController: UIViewController {

    
    
    @IBOutlet var developerImage: UIImageView!
    
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var telegramLabel: UILabel!
    
    var game: Game!
    var name: String!
    var surname: String!
    var age: String!
    var telegram: String!
    var image: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = age
        telegramLabel.text = telegram
        developerImage.image = UIImage(named: image)
        
        settingBackround()
    }
    
    @IBAction func clouseButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    private func settingBackround() {
        let backroundImage = UIImageView(image: UIImage(named: "backroundImageGameVC"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.1
        
        view.addSubview(backroundImage)
        view.sendSubviewToBack(backroundImage)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
