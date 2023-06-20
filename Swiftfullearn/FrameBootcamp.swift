//
//  FrameBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/2/23.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .frame(width: 100,height: 100,alignment:.center)
//            .background(Color.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
