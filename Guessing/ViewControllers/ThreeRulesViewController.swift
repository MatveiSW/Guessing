//
//  ThreeRulesViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class ThreeRulesViewController: UIViewController {
    var game: Game!
    
    @IBOutlet var rulesGameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rulesGameLabel.text = game.rules.last
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
