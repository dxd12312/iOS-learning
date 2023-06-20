//
//  AnimationTimingBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/14.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnmations: Bool = false
    var body: some View {
        VStack{
            Button("Button: \(isAnmations.description)")
            {
                isAnmations.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnmations ? 300 : 50, height: 100)
                .animation(.spring(response: 1.0, dampingFraction: 0.2, blendDuration: 1.0))

        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
