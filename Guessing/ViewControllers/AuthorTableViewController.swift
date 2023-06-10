//
//  AuthorTableViewController.swift
//  Guessing
//
//  Created by Денис on 10/06/2023.
//

import UIKit

final class AuthorTableViewController: UITableViewController {

    let game = Game.getGame()
    
    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        guard let developVC = segue.destination as? DeveloperInformationViewController else { return }
        developVC.name = game.developerNames[indexPath.row]
        developVC.surname = game.developerSurnames[indexPath.row]
        developVC.age = game.developerAge[indexPath.row]
        developVC.telegram = game.developerTelegram[indexPath.row]
        developVC.image = game.developerImage[indexPath.row]
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return game.gameDevelopers.count  // Можно обойтись без ретурн
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "authors", for: indexPath)
    
        var content = cell.defaultContentConfiguration()
        content.text = game.gameDevelopers[indexPath.row]
        content.image = UIImage(named: game.developersImageTableViewCell[indexPath.row])
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "developerInformation", sender: nil)
        case 1:
            performSegue(withIdentifier: "developerInformation", sender: nil)
        case 2:
            performSegue(withIdentifier: "developerInformation", sender: nil)
        default:
            break
        }
    }

}

