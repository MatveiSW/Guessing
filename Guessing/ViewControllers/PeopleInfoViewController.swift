//
//  PeopleInfoViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class PeopleInfoViewController: UIViewController {

    
    let game = Game.getGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return game.developerNames.count
//    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Authors", for: indexPath)
//
//        var content = cell.defaultContentConfiguration()
//        content.text = game.developerNames[indexPath.row]
//        content.image = UIImage(named: game.imageTableViewCell[indexPath.row])
//        cell.contentConfiguration = content
//
//        return cell
//    }

}
