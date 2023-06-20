//
//  BackgroundAndOverlayBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/8.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color("Linear1Color"),Color("Linear2Color")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100,height: 100)
                    .shadow(color: Color("Linear2Color"), radius: 10,x: 0.0,y: 10)
                    .overlay(
                        Circle()
                            .fill(Color("Linear1Color"))
                            .frame(width: 30,height: 30)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color("Linear2Color"), radius: 10,x: 5,y: 5)
                        ,alignment: .bottomTrailing
                            )
            )
//        Rectangle()
//            .fill(Color.blue)
//            .frame(width: 100,height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.purple)
//                    .frame(width: 50,height: 50)
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.pink)
//                    .frame(width: 150,height: 150)
//            )
//        Circle()
//            .fill(Color.blue)
//            .frame(width: 100,height: 100,alignment: .center)
//            .overlay(Text("1")
//                .font(.largeTitle)
//                .foregroundColor(.white))
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 120,height: 120,alignment: .center)
//            )
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
////                Color.red
////                LinearGradient(colors: [Color.red,Color.blue], startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 100,height: 100,alignment: .center)
//
//            )
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 120,height: 120,alignment: .center)
//            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
