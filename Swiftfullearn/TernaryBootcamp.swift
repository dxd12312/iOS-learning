//
//  TernaryBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/14.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStaring: Bool = false
    var body: some View {
        VStack{
            Button("Button: \(isStaring.description)") {
                isStaring.toggle()
            }
            Text(isStaring ? "开始": "结束")
            RoundedRectangle(cornerRadius: isStaring ? 20 : 30)
                .frame(width: isStaring ? 40 : 100, height: isStaring ? 100: 200)
                .foregroundColor(isStaring ? .pink : .blue)
            
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
