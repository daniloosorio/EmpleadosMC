//
//  EmployeeCel.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 20/02/25.
//

import SwiftUI

struct EmployeesCell: View {
    let employee: Employee
    var body: some View {
        HStack{
            CircularImageView(imageUrl: employee.avatar,size: 80)
            VStack(alignment: .leading) {
                Text("\(employee.lastName), \(employee.firstName)")
                    .font(.headline)
                Text(employee.email)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(employee.department.rawValue)
                    .font(.footnote)
                    .padding(.top,5)
            }
        }
    }
}

#Preview {
    EmployeesCell(employee: .test)
}
