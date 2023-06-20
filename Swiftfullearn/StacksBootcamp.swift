//
//  StacksBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/15.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 350,height: 500,alignment: .center)
            VStack {
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 150,height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 120,height: 120)
                HStack {
                    Rectangle()
                        .fill(Color.yellow)
                    .frame(width: 75,height: 75)
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 100,height: 100)
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50,height: 50)
                }
                .background(Color.black)
                
            }
            .background(Color.white)
        }
//        ZStack(alignment: .bottomTrailing, content: {
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 200,height: 200)
//            Rectangle()
//                .fill(Color.pink)
//                .frame(width: 150,height: 150)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100,height: 100)
//        }

    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
