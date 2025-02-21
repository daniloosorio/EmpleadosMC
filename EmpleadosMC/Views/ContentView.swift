//
//  ContentView.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(GestionViewModel.self) var vm
    
    var body: some View {
        @Bindable var binding = vm
        NavigationStack {
            List(vm.employeesLogic.employees){employee in
                NavigationLink(value: employee, label: {EmployeesCell(employee: employee)})
            }
            .navigationTitle("Empleados")
            .navigationDestination(for: Employee.self, destination: {employee in
                DetailEmployee(employee: employee)
                
            })
        }
        .alert("Application Error", isPresented: $binding.employeesLogic.showAlert) {
        } message: {
            Text(vm.employeesLogic.message)
        }
    }
}

#Preview {
    ContentView().environment(GestionViewModel.preview)
}


