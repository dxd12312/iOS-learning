//
//  AppStoreBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/19.
//

import SwiftUI

struct AppStoreBootcamp: View {
    
//    @State var currentUserName: String?
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack {
           Text(currentUserName ?? "Add Name Here")
            
            Button("Save") {
                let name: String = "Blue"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStoreBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreBootcamp()
    }
}
