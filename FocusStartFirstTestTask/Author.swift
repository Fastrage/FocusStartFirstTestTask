//
//  Author.swift
//  FocusStartFirstTestTask
//
//  Created by Олег Крылов on 11/07/2019.
//  Copyright © 2019 OlegKrylov. All rights reserved.
//

import Foundation
class  Author: CustomStringConvertible {
    var id: Int
    var name: String
    var surname: String
    var phoneNumber: Int
    
    init(id: Int, name: String, surname:String, phoneNumber: Int) {
        self.id = id
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
    }
    var description: String {
        var descriptopn = ""
        descriptopn += "Имя: \(self.name) \(self.surname) "
        //descriptopn += "Фамилия: \(self.surname) "
        descriptopn += "Телефон: +\(self.phoneNumber) "
        return descriptopn
    }
}
