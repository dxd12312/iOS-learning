//
//  TextBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/1/18.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title)
            .fontWeight(.heavy)
            .underline()
            .italic()
            .strikethrough()
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
