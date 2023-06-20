//
//  ColorPickerBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/16.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            ColorPicker(
                "选择颜色",
                selection: $backgroundColor,
                supportsOpacity: true
            )
            .padding()
            .font(.headline)
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
