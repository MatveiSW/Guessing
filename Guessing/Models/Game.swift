//
//  Game.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

struct Game {
    let gameNames: [String]
    let developerNames: [String]
    let actorNames: [String]
    let rules: [String]
    
    static func getGame() -> Game {
        Game(
            gameNames: DataStore.shared.gameNames,
            developerNames: DataStore.shared.developerNames,
            actorNames: DataStore.shared.actorNames,
            rules: DataStore.shared.rules
        )
    }
}
