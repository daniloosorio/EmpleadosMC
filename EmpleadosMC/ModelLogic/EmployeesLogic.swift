//
//  EmployeesLogic.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 18/02/25.
//

import SwiftUI

@Observable
final class EmployeesLogic {
    //singlenton
    static let shared = EmployeesLogic()
    
    let persistence: PersistenceInteractor
    
    var employees: [Employee]
    
    var showAlert = false
    var message = ""
    
    init(persistence: PersistenceInteractor = Persistence()) {
        self.persistence = persistence
        do {
            self.employees = try persistence.loadEmpleados()
        } catch {
            self.employees = []
            message = error.localizedDescription
            showAlert.toggle()
        }
    }
    
}
