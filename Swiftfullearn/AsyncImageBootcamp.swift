//
//  AsyncImageBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/20.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnImage):
                returnImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
        
//        AsyncImage(url: url) { returnImage in
//            returnImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//        } placeholder: {
//            ProgressView()
//        }

    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
