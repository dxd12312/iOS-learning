//
//  GridBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/19.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(),spacing: nil, alignment: nil),
        GridItem(.flexible(),spacing: nil, alignment: nil),
        GridItem(.flexible(),spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.blue)
                .frame(height: 400)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 6,pinnedViews: [.sectionHeaders]
            ) {
                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                        
                }
                Section {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.orange)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                        
                }

                
            }
//            Rectangle()
//                .fill(Color.white)
//                .frame(height: 400)
//
//            LazyVGrid(columns: columns) {
//
//            }
        }
      
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
