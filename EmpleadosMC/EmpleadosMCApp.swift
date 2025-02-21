//
//  EmpleadosMCApp.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 18/02/25.
//

import SwiftUI

@main
struct EmpleadosMCApp: App {
    @State var vm = GestionViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(vm)
        }
    }
}
