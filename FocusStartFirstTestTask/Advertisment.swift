//
//  Advertisment.swift
//  FocusStartFirstTestTask
//
//  Created by Олег Крылов on 11/07/2019.
//  Copyright © 2019 OlegKrylov. All rights reserved.
//

import Foundation
class Advertisment: CustomStringConvertible {
    var id: Int
    var name: String
    var date: Date
    var descr: String
    var price: Int
    var author: Author
    
    
    init(id: Int, name: String, date: Date, description: String, price: Int, author: Author) {
        self.id = id
        self.name = name
        self.date = date
        self.descr = description
        self.price = price
        self.author = author
    }
    
    init(id: Int, name: String, description: String, price: Int, author: Author) {
        self.id = id
        self.name = name
        self.date = Date()
        self.descr = description
        self.price = price
        self.author = author
    }
    
    var description: String {
        var description = ""
        description += "Заголовок: \(self.name) "
        description += "Дата: \(timeFormat(time: self.date)) "
        description += "Описание: \(self.descr) "
        description += "Цена: \(self.price) "
        description += "Автор: \(self.author)"
        return description
    }
    
    func timeFormat(time:Date) -> String {
        let currentTIme = Calendar.current
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let externalTime = dateFormatter.string(from: time)
        if currentTIme.isDateInToday(time) {
            return "Сегодня \(externalTime)"
        } else if currentTIme.isDateInYesterday(time) {
            return "Вчера \(externalTime)"
        } else  {return "\(time)"}
    }
}
