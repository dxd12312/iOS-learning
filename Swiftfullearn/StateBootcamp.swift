//
//  StateBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/20.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor: Color = Color.blue
    @State var title: String = "我的标题"
    @State var count: Int = 0
    var body: some View {
        ZStack{
            //背景
            backgroundColor
                .ignoresSafeArea()
            
            //内容
            VStack(spacing: 20) {
                Text(title)
                    .font(.largeTitle)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button {
                        self.backgroundColor = Color.purple
                        self.title = "按钮1被触发"
                        self.count += 1
                    } label: {
                        Text("按钮1")
                    }
                    Button {
                        self.backgroundColor = Color.pink
                        self.title = "按钮2被触发"
                        self.count -= 1
                    } label: {
                        Text("按钮2")
                    }

                }
            }
            .foregroundColor(Color.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
