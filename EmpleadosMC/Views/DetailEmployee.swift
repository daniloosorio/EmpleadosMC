//
//  DetailEmployee.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 20/02/25.
//

import SwiftUI

struct DetailEmployee: View {
    let employee: Employee
    var body: some View {
        VStack {
            CircularImageView(imageUrl: employee.avatar,size: 250)
            Form {
                LabeledContent("Nombre", value: employee.firstName)
                LabeledContent("Apellido", value: employee.lastName)
                LabeledContent("Email", value: employee.email)
            }
        }
        .navigationTitle("Employee Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailEmployee(employee: .test)
}
