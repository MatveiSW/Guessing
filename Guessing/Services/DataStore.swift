//
//  DataStore.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

class DataStore {
  static let shared = DataStore()
    
    let gameNames = ["Угадай рейтинг фильма", "Угадай фильм по обложке", "Угадай актера по фото"] // Напиши название своей игры
    let developerNames = ["Залман Зотеев", "Денис Акишин", "Матвей Авдеев"] // Напиши свое имя
    let gameDevelopers = ["Разработчик 1-ой игры", "Разработчик 2-ой игры", "Разработчик 3-ий игры"]
    let actorNames = ["Джейсон Стейтем", "Вин Дизель", "Уилл Смит", "Пол Уокер", "Дуэйн Джонсон"]
    let movieNames = ["Shawshank", "Inception", "GodFather", "FightClub", "SchindlerList"]
    let moviePictures = ["Shawshank", "Inception", "GodFather", "FightClub", "SchindlerList"]
    let ratingIMDB: [Float] = [7.6,  // Harry Potter and the Sorcerer's Stone
                      8.4,  // Avengers: Endgame
                      7.3,  // The Secret Life of Walter Mitty
                      8.0,  // The Pursuit of Happyness
                      7.2   // Cars
    ]
    let rules = [
        "Попробуй угадать рейтинг фильма IMDB! У тебя есть всего 3 шанса на ошибку и 5 вопросов. Я знаю, каждый вечер ты листаешь подборки с разными фильмами и наверняка знаешь все рейтинги наизусть, Покажи на что ты способен!",
        "Попробуй угадать название фильма по его обложке! У тебя есть всего 3 шанса на ошибку и 5 вопросов. Проверим насколько ты увлекаешься кино и достоин ли звания Киногуру!",
        "Попробуй угадать актера по его фото! У тебя есть всего 3 шанса на ошибку и 5 вопросов. В случае орфорграфической ошибки ответ будет не засчитан. Будь внимателен, удачи!"] // Напиши свои правила
    let resultActorGames = [
        "Твое знание актеров оставляет желать лучшего, но не стоит расстраиваться! Ты всегда можешь попробовать еще раз",
        "Да ты крут! Так держать, а сможешь угадать рейтинг фильма по его обложке?",
        "Твои знания великолепны, мы почти уверены, что ты не подсматривал). Может проверишь свои знания музыки?"
    ]
    let imageTableViewCell = ["oneGamePicture", "twoGamePicture", "threeGamePicture"]
    let developersImageTableViewCell = ["firstDeveloper", "secondDeveloper", "thirdDeveloper"]
    let resultImage = ["Плохо", "Нормально", "Отлично"]
    
    
    private init() { }
}
// Расширяй и используй этот файл в Models
