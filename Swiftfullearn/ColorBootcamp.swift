//
//  ColorBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/1/18.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
//                Color(uiColor: .secondarySystemBackground)
                Color("MainColor")
                
            )
            .frame(width: 300,height: 200)
//            .shadow(radius: 20)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
