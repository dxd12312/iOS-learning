//
//  BadgeBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/20.
//

import SwiftUI

//List
//TabView

struct BadgeBootcamp: View {
    var body: some View {
        List {
            Text("Hello, world!")
                .badge("new")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("new")
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//                }
        }
    }
    
    struct BadgeBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            BadgeBootcamp()
        }
    }
