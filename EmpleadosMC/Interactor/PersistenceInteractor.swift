//
//  PersistenceIteractor.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 18/02/25.
//

import Foundation

protocol PersistenceInteractor {
    var bundleURL: URL { get }
    var docURL: URL { get }
    
    func loadEmpleados() throws -> [Employee]
    func saveEmpleados(_ empleados: [Employee]) throws
}

extension PersistenceInteractor {
    func loadEmpleados() throws -> [Employee] {
        var url = docURL
        if !FileManager.default.fileExists(atPath: url.path()) {
            url = bundleURL
        }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Employee].self, from: data)
    }
    
    func saveEmpleados(_ employees: [Employee]) throws {
        let data = try JSONEncoder().encode(employees)
        try data.write(to: docURL,options: .atomic)
    }
}

struct Persistence:PersistenceInteractor {
    var bundleURL: URL {
        Bundle.main.url(forResource: "EmployeesDemo", withExtension: "json")!
    }
    var docURL: URL {
        URL.documentsDirectory.appending(path: "EmployeesDemo.json")
    }
  
}
