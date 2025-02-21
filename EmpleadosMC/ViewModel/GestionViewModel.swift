//
//  GestionViewModel.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 18/02/25.
//

import Foundation

@Observable
final class GestionViewModel {
    var employeesLogic: EmployeesLogic
    
    init(employeesLogic: EmployeesLogic = .shared) {
        self.employeesLogic = employeesLogic
    }
}
