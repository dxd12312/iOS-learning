//
//  ConditionalBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/14.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    var body: some View {
        VStack(spacing: 20){
            Button("Circle button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("方形 button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 200, height: 100)
            }
            //and
//            if showCircle && showRectangle{
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 200,height: 100)
//            }
            //or
            if showCircle || showRectangle{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200,height: 100)
            }
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
