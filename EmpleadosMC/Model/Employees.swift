//
//  Employees.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 18/02/25.
//

import Foundation

struct Employee: Codable, Identifiable, Hashable {
    let id: Int
    var firstName: String
    var lastName: String
    var email:String
    var gender: Gender
    var department: Department
    var avatar: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case email
        case gender
        case department
        case avatar
    }
}
