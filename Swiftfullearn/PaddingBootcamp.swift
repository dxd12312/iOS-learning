//
//  PaddingBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/17.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom,20)
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical,10)
        .background(
            Color.white
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3),radius: 10,x: 0.0,y: 10)
        )
        .padding(.horizontal,10)
//            .frame(maxWidth: .infinity,alignment: .leading)
//            .background(Color.blue)
//            .padding(.leading,10)
//            .background(Color.yellow)
////            .padding()
//            .padding(.all,10)
//            .background(Color.blue)
           
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
