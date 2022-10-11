//
//  User.swift
//  Appetizers
//
//  Created by Thiago Oliveira on 11/10/22.
//

import Foundation

struct User: Codable {
    var firstName: String       = ""
    var lastName: String        = ""
    var email: String           = ""
    var birthday: Date          = Date()
    var extraNapkins: Bool      = false
    var frequentRefills: Bool   = false
}
