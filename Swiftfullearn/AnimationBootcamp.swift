//
//  AnimationBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/14.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnmations: Bool = false
    var body: some View {
        VStack{
            Button("Button: \(isAnmations.description)") {
//                withAnimation (Animation.default.repeatForever(autoreverses: <#T##Bool#>)) {
//                        isAnmations = true
//                    }
                isAnmations.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnmations ? 50 : 25)
                .frame(width: isAnmations ? 100 : 300, height: isAnmations ? 100 : 300)
                .foregroundColor(isAnmations ? .pink : .blue)
                .rotationEffect(Angle(degrees: isAnmations ? 180 : 0))
                .offset(y: isAnmations ? 100 : 0)
//                .animation(Animation.default.repeatForever(autoreverses: true))
            
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
