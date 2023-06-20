//
//  SpacerBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/17.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(Color.pink)
            .padding(.horizontal)
//        .background(Color.blue)
        Spacer()
                        Rectangle()
//                            .fill(Color.blue)
                            .frame(height: 50)
        }
//        .background(Color.pink)
    }
}
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100,height: 100)
//            Spacer()
//
//            Rectangle()
//                .fill(Color.pink)
//                .frame(width: 100,height: 100)
//            Spacer()
//            Rectangle()
//                .fill(Color.pink)
//                .frame(width: 100,height: 100)

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
