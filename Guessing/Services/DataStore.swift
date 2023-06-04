//
//  DataStore.swift
//  Guessing
//
//  Created by Матвей Авдеев on 04.06.2023.
//

class DataStore {
  static let shared = DataStore()
    
    let gameNames = ["oneGame", "twoGame", "Угадай актера по фото"] // Напиши название своей игры
    let developerNames = ["oneName", "twoName", "Матвей Авдеев"] // Напиши свое имя
    let actorNames = ["Джейсон Стейтем", "Брюс Уиллис", "Уилл Смит", "Пол Уокер", "Дуэйн Джонсон"]
    let rules = [
        "oneRules",
        "twoRules",
        "Попробуй угадать актера по его фото! У тебя есть всего 3 шанса на ошибку и 5 вопросов. В случае орфорграфической ошибки ответ будет не засчитан. Будь внимателен, удачи!"] // Напиши свои правила
    
    
    private init() { }
}
// Расширяй и используй этот файл в Models
