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
    let imageTableViewCell: [String]
    let resultImage: [String]
    let movieNames: [String]
    let moviePictures: [String]

    static func getGame() -> Game {
        Game(
            gameNames: DataStore.shared.gameNames,
            actorNames: DataStore.shared.actorNames,
            rules: DataStore.shared.rules,
            resultActorGames: DataStore.shared.resultActorGames,
            ratingIMDB: DataStore.shared.ratingIMDB,
            imageTableViewCell: DataStore.shared.imageTableViewCell,
            resultImage: DataStore.shared.resultImage,
            movieNames: DataStore.shared.movieNames,
            moviePictures: DataStore.shared.moviePictures
            
        )
    }
        
}




