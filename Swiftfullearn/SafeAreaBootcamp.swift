//
//  SafeAreaBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/19.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack{
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 200)
                        .shadow(radius: 20)
                        .padding(20)
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
