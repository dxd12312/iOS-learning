//
//  ExtractedFunctionBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/25.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
   @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        ZStack {
            //背景
            backgroundColor.edgesIgnoringSafeArea(.all)
            //内容
            contentLayer
        }
    }
        var contentLayer: some View {
            VStack {
                Text("标题")
                    .font(.largeTitle)
//                    .foregroundColor(.black)
                Button {
                    buttonPressed()
                } label: {
                    Text("点击")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)

                }

            }
        }
        
        
     func buttonPressed() {
          backgroundColor = .pink
        }
 
    }


struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
