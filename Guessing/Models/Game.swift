//
//  Game.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

struct Game {
    let gameNames: [String]
    let developerNames: [String]
    let gameDevelopers: [String]
    let actorNames: [String]
    let rules: [String]
    let resultActorGames: [String]
    let ratingIMDB: [Float]
    let imageTableViewCell: [String]
    let developersImageTableViewCell: [String]
    let resultImage: [String]
    let movieNames: [String]
    let moviePictures: [String]
   
    
    let developerSurnames: [String]
    let developerAge: [String]
    let developerTelegram: [String]
    let developerImage: [String]
    static func getGame() -> Game {
        Game(
            gameNames: DataStore.shared.gameNames,
            developerNames: DataStore.shared.developerNames,
            gameDevelopers: DataStore.shared.gameDevelopers,
            actorNames: DataStore.shared.actorNames,
            rules: DataStore.shared.rules,
            resultActorGames: DataStore.shared.resultActorGames,
            ratingIMDB: DataStore.shared.ratingIMDB,
            imageTableViewCell: DataStore.shared.imageTableViewCell,
            developersImageTableViewCell: DataStore.shared.developersImageTableViewCell,
            resultImage: DataStore.shared.resultImage,
            movieNames: DataStore.shared.movieNames,
            moviePictures: DataStore.shared.moviePictures,
            developerSurnames: DataStore.shared.developerSurnames,
            developerAge: DataStore.shared.developerAge,
            developerTelegram: DataStore.shared.developerTelegram,
            developerImage: DataStore.shared.developerImage
        )
    }
        
}




