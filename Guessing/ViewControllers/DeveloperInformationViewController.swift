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
    @IBOutlet var countryLabel: UILabel!
    
    var game: Game!
    var name: String!
    var surname: String!
    var age: Int!
    var country: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
//        developerImage.layer.cornerRadius = developerImage.frame.size.width / 2
//        developerImage.clipsToBounds = true
        
        settingBackround()
    }
    func settingBackround() {
        let backroundImage = UIImageView(image: UIImage(named: "backroundImageGameVC"))
        backroundImage.frame = view.bounds
        backroundImage.contentMode = .scaleAspectFill
        backroundImage.alpha = 0.3
        
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
