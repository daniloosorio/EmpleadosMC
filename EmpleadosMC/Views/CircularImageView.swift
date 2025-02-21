//
//  CircularImageView.swift
//  EmpleadosMC
//
//  Created by Danilo Osorio on 20/02/25.
//

import SwiftUI

struct CircularImageView: View {
    let imageUrl: URL
    let size: CGFloat
    
    var body: some View {
        AsyncImage(url: imageUrl){ phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable()
                    .scaledToFill()
                    .frame(width: size,height: size)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(Circle())
                    
            case .failure:
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: size,height: size)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(Circle())
                    
            default:
                EmptyView()
            }
            
        }
    }
}

#Preview {
    CircularImageView(imageUrl: URL(filePath: "https://robohash.org/and.png")!,size: 250)
}
