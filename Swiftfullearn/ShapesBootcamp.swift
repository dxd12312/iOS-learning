//
//  ShapesBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/1/18.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //圆形形状
//        Circle()
//            .trim(from: 0.2,to: 0.9)
//            .stroke(Color.blue,lineWidth: 20.0)
        //椭圆
        Ellipse()
        //扁圆
//        Capsule()
        //矩形
//        Rectangle()
//        RoundedRectangle(cornerRadius: 50)
        
        //填充颜色
//            .fill(Color.blue)
//            .foregroundColor(.pink)
        //边框颜色和大小
//            .stroke(Color.red)
//            .stroke(Color.blue,lineWidth: 30)
        //边框颜色大小形状
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 30,lineCap: .square,dash: [40]))
        //修剪
//            .trim(from: 0.2,to: 1.0)
//            .stroke(Color.blue,lineWidth: 30)
//            .frame(width: 300,height: 100)
        
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
