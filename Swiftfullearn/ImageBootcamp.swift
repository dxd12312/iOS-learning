//
//  ImageBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/2/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("a-icon_huaban1")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
//            .font(.custom("a-icon_huaban1", size: 20))
            .foregroundColor(Color("MainColor"))
            .frame(width: 40)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
