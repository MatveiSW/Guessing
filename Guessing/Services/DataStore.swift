//
//  DataStore.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

class DataStore {
    static let shared = DataStore()
    
    let gameNames = ["Угадай рейтинг фильма", "Угадай фильм по обложке", "Угадай актера по фото"]
    let gameDevelopers = ["Разработчик 1-ой игры", "Разработчик 2-ой игры", "Разработчик 3-ий игры"]
    let actorNames = ["Джейсон Стейтем", "Вин Дизель", "Уилл Смит", "Пол Уокер", "Дуэйн Джонсон"]
    let movieNames = ["Побег из Шоушенка", "Начало", "Крестный отец", "Бойцовский клуб", "Список Шиндлера"]
    let moviePictures = ["Shawshank", "Inception", "GodFather", "FightClub", "SchindlerList"]
    let ratingIMDB: [Float] = [
        7.6,
        8.4,
        7.3,
        8.0,
        7.2
    ]
    let rules = [
        "Попробуй угадать рейтинг фильма IMDB! У тебя есть всего 3 шанса на ошибку и 5 вопросов. Я знаю, каждый вечер ты листаешь подборки с разными фильмами и наверняка знаешь все рейтинги наизусть, Покажи на что ты способен!",
        "Попробуй угадать название фильма по его обложке! У тебя есть всего 3 шанса на ошибку и 5 вопросов. Проверим насколько ты увлекаешься кино и достоин ли звания Киногуру!",
        "Попробуй угадать актера по его фото! У тебя есть всего 3 шанса на ошибку и 5 вопросов. В случае орфорграфической ошибки ответ будет не засчитан. Будь внимателен, удачи!"
    ]
    let resultActorGames = [
        "Твое знание актеров оставляет желать лучшего, но не стоит расстраиваться! Ты всегда можешь попробовать еще раз",
        "Да ты крут! Так держать, а сможешь угадать рейтинг фильма по его обложке?",
        "Твои знания великолепны, мы почти уверены, что ты не подсматривал). Может проверишь свои знания музыки?"
    ]
    let guessTheMovie = [
        "Твое знание фильмов оставляет желать лучшего, но не стоит расстраиваться! Ты всегда можешь попробовать еще раз!",
        "Неплохо! Но можно ещё лучше! Попробуй ещё раз, чтобы получить максимальный результат!", "Да ты хорош! Ты вполне заслуживаешь звания Киногуру, так держать!"
    ]
    let imageTableViewCell = ["oneGamePicture", "twoGamePicture", "threeGamePicture"]
    let developersImageTableViewCell = ["firstDeveloper", "secondDeveloper", "thirdDeveloper"]
    let resultImage = ["Плохо", "Нормально", "Отлично"]
    let secondGameImages = ["badResult", "notBadResult", "topResult"]
    
    let developerNames = ["Залман", "Денис", "Матвей"]
    let developerSurnames = ["Зотеев", "Акишин", "Авдеев"]
    let developerAge = ["28", "25", "20"]
    let developerTelegram = ["@ZZZalman", "@deenozaw", "@lolwrrr"]
    let developerImage = ["oneImage", "twoImage", "threeImage"]
    
    private init() { }
}

