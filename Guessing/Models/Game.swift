//
//  Game.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

struct Game {
    let gameNames: [String]
    let actorNames: [String]
    let rules: [String]
    let resultActorGames: [String]
    let ratingIMDB: [Float]
    
    static func getGame() -> Game {
        Game(
            gameNames: DataStore.shared.gameNames,
            actorNames: DataStore.shared.actorNames,
            rules: DataStore.shared.rules,
            resultActorGames: DataStore.shared.resultActorGames,
            ratingIMDB: DataStore.shared.ratingIMDB
        )
    }
}
