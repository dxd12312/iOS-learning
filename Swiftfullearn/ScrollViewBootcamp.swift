//
//  ScrollViewBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/19.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            //lazyVStack可以使页面刚开始不加载很多在你滑动时慢慢加载，如果有大量数据可以使用
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 20.0)
                                    .fill(Color.white)
                                    .frame(width: 200,height: 100)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                    
                }
            }
        }
//        ScrollView(.horizontal,showsIndicators: true, content: {
//                        HStack {
//                            ForEach(0..<50) { index in
//
//                                    Rectangle()
//                                    .fill(Color.blue)
//                                        .frame(width: 300,height: 100)
//
//                            }
//
//                        }
//        })
//        ScrollView {
//            VStack {
//                ForEach(0..<50) { index in
//
//                        Rectangle()
//                            .frame(height: 300)
//
//                }
//
//            }
//        }
        
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
