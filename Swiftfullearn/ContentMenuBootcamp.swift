//
//  ContentMenuBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/16.
//

import SwiftUI

struct ContentMenuBootcamp: View {
    @State var showMenu: Bool = false
    @State var backgroundColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("丁旭东")
                .font(.headline)
            Text("个性签名")
                .font(.subheadline)
        }
        .frame(width: 200, alignment: .leading)
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
                Button {
                        showMenu.toggle()
                        backgroundColor = .pink
                   
                   
                } label: {
                    HStack {
                        Text("BUtton 1")
                        Image(systemName: "heart.fill")
                    }
                }

            
            Button("button2") {
                showMenu.toggle()
                backgroundColor = .yellow
            }
            Button("button3") {
                showMenu.toggle()
                backgroundColor = .orange
            }
        }
    }
}

struct ContentMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContentMenuBootcamp()
    }
}
