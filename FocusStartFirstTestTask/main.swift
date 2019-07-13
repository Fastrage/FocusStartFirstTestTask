//
//  main.swift
//  FocusStartFirstTestTask
//
//  Created by Олег Крылов on 11/07/2019.
//  Copyright © 2019 OlegKrylov. All rights reserved.
//

import Foundation

var allAdvertisments: [Advertisment] = []
let service = Services()

//MARK: Добавляем авторов
var author1 = Author(id: 1, name: "Иван", surname: "Иванов", phoneNumber: 78005553535)
var author2 = Author(id: 2, name: "Вася", surname: "Петров", phoneNumber: 78000123123)



//MARK: Добавляем обьвления
allAdvertisments = service.addNewAdvertisment(id: 1, name: "Продам гараж", date: Date.init()-120000, description: "Продам металлический гараж 6х3 м2", price: 30000, author: author1, allAdvertsiment: allAdvertisments )
allAdvertisments = service.addNewAdvertisment(id: 2, name: "Утюг! Чугунный!", date: Date.init(timeIntervalSince1970: 1231231223), description: "Привет из старины, 5кг", price: 1500, author: author2, allAdvertsiment: allAdvertisments )
allAdvertisments = service.addNewAdvertisment(id: 3, name: "Продам доску обьявлений!", date: Date.init(timeIntervalSince1970: 1531431223), description: "Сабж", price: 40000, author: author1, allAdvertsiment: allAdvertisments )
allAdvertisments = service.addNewAdvertisment(id: 4, name: "Ничего не продам, просто привет!", date: nil, description: "Привет!", price: 0, author: author2, allAdvertsiment: allAdvertisments)

print("--//--//--//--//--//--//--//--//--//--")
print("Выводим все обьявления")
service.printAllAdvertisment(allAdvertisment: allAdvertisments)
print("--//--//--//--//--//--//--//--//--//--")
print("Выводим все обьявления от автора2")
service.findAdvertismentByAuthor(author: author2, allAdvertsiment: allAdvertisments)
print("--//--//--//--//--//--//--//--//--//--")
print("Поиск обьявления по описанию")
service.findAdvertismentbyDescription(description: "гараж", allAdvertisment: allAdvertisments)
print("--//--//--//--//--//--//--//--//--//--")
print("Удаляем обьявление по его ID и выводим оставшиеся")
allAdvertisments = service.removeAdvertismentById(id: 1, allAdvertisment: allAdvertisments)
service.printAllAdvertisment(allAdvertisment: allAdvertisments)
print("--//--//--//--//--//--//--//--//--//--")
print("Удаляем все обьвления от автора2")
print(service.removeAdvertismnetByAuthor(author: author2, allAdvertisment: allAdvertisments))
