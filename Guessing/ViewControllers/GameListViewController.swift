//
//  GameListViewController.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

import UIKit

class GameListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 100
    }
    let game = Game.getGame()
    
    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return game.gameNames.count  // Можно обойтись без ретурн
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
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


