//
//  iconsBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/2/23.
//

import SwiftUI

struct iconsBootcamp: View {
    var body: some View {
//         名称
        Image(systemName: "xmark")
//        填充容器
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//        填充容器（不会超）
//            .scaledToFit()
//        填满整个容器（会超容器）
//            .scaledToFill()
//        大小
            .font(.system(size: 20))
//        颜色
            .foregroundColor(Color("MainColor"))
            .frame(width: 300,height: 300)
//        多余内容裁剪
//            .clipped()
    }
}

struct iconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        iconsBootcamp()
    }
}
