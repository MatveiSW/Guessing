//
//  GameListViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

final class GameListViewController: UITableViewController {
    
    
    let game = Game.getGame()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    
    // MARK: - Table view data source
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "threeGame" {
            guard let threeTabBarVC = segue.destination as? ThreeTabBarController else { return }
            threeTabBarVC.game = game
        } else if segue.identifier == "twoGame" {
            guard let twoTabBatVC = segue.destination as? TwoTabBarCotroller else { return }
            twoTabBatVC.game = game
        } else if segue.identifier == "oneGame" {
            guard let oneTabBarVC = segue.destination as? OneTabBarController else { return }
            oneTabBarVC.game = game
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        game.gameNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "games", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = game.gameNames[indexPath.row]
        content.image = UIImage(named: game.imageTableViewCell[indexPath.row])
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "oneGame", sender: nil)
        case 1:
            performSegue(withIdentifier: "twoGame", sender: nil)
        case 2:
            performSegue(withIdentifier: "threeGame", sender: nil)
        default:
            break
        }
    }
    
    //MARK: - IBActions
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
    }
    
}


