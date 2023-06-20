//
//  BindingBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/14.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)

            }
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .blue
    var body: some View {
        Button {
            backgroundColor = .pink
            title = "Pink"
            buttonColor = .green
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 16)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
