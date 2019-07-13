//
//  Services.swift
//  FocusStartFirstTestTask
//
//  Created by Олег Крылов on 11/07/2019.
//  Copyright © 2019 OlegKrylov. All rights reserved.
//

import Foundation
class Services {
    func addNewAdvertisment(id:Int, name: String, date: Date?, description: String, price: Int, author: Author,  allAdvertsiment: [Advertisment]) -> [Advertisment] {
        var currentAdvertismentList: [Advertisment] = allAdvertsiment
        
        if date == nil {
            currentAdvertismentList.append(Advertisment(id: id, name: name, description: description, price: price, author: author))
        } else {
            currentAdvertismentList.append(Advertisment(id: id, name: name, date: date!, description: description, price: price, author: author)) }
        return currentAdvertismentList
    }
    func findAdvertismentByAuthor(author: Author, allAdvertsiment:[Advertisment]) -> [Advertisment] {
        let result = allAdvertsiment.filter{$0.author.id == author.id}
        print("Найденные обьявления:")
        printAllAdvertisment(allAdvertisment: result)
        return result
    }
    func findAdvertismentbyDescription(description: String, allAdvertisment:[Advertisment]) -> [Advertisment] {
        let result = allAdvertisment.filter{$0.description.contains(description)}
        print("Найденные обьявления:")
        printAllAdvertisment(allAdvertisment: result)
        return result
    }
    func removeAdvertismentById(id:Int, allAdvertisment:[Advertisment]) -> [Advertisment] {
        let result = allAdvertisment.filter{$0.id != id}
        return result
    }
    func removeAdvertismnetByAuthor(author: Author, allAdvertisment:[Advertisment]) -> [Advertisment] {
        let result = allAdvertisment.filter{$0.author.id != author.id}
        return result
    }
    func printAllAdvertisment(allAdvertisment:[Advertisment]) {
        for advertisment in allAdvertisment {
            print(advertisment)
        }
    }
}
