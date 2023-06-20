//
//  NavigationViewBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/15.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("所有内容")
            .navigationBarItems(leading: HStack {
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            }, trailing:NavigationLink(destination: {
                MyOtherScreen()
                
            }, label: {
                Image(systemName: "gear")
                    .foregroundColor(.red)
            })
            )
            .navigationBarHidden(false)
        }
        
    }
}

struct MyOtherScreen: View {
    
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationBarHidden(false)
            
            VStack {
                Button("BUTTON BACK") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click There") {
                    Text("3rd 页面")
                }
            }
            
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
