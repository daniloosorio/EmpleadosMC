//
//  ContentView.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    @State var vm = GestionViewModel()
    
    var body: some View {
        List(vm.employeesLogic.employees){employee in
            Text(employee.firstName)
        }
    }
}

#Preview {
    ContentView(vm: .preview)
}
