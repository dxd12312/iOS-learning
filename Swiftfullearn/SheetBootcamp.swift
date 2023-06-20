//
//  SheetBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/14.
//

import SwiftUI

struct SheetBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
            Button("Button") {
                showSheet.toggle()
            }
            .foregroundColor(.pink)
            .padding()
            .font(.headline)
            .background(Color.white.cornerRadius(10))
        }
        //全屏
        .fullScreenCover(isPresented: $showSheet) {
            SecoundScreen()
        }
//        .sheet(isPresented: $showSheet) {
//            SecoundScreen()
//        }
    }
}

struct SecoundScreen: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.blue
                .ignoresSafeArea()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding()
                    .font(.largeTitle)
            })
            
        }
    }
}

struct SheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp()
//        SecoundScreen()
    }
}
