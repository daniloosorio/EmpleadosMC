//
//  PersistencePreview.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 18/02/25.
//

import Foundation

struct PersistencePreview: PersistenceInteractor {
    var bundleURL: URL {
        Bundle.main.url(forResource: "Employees", withExtension: "json")!
    }
    var docURL: URL {
        URL.documentsDirectory.appending(path: "Employees.json")
    }
    
}

extension GestionViewModel {
    static let preview =  GestionViewModel(employeesLogic: EmployeesLogic(persistence: PersistencePreview()))
}

extension Employee {
    static let test = Employee(id: 1, firstName: "danilo", lastName: "osori", email: "dani@gamil.com", gender: .male, department: .businessDevelopment, avatar: URL(string: "https://robohash.org/and.png")!)
}
