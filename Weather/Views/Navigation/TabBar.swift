//
//  TabBar.swift
//  Weather
//
//  Created by dxd on 2023/6/8.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    var body: some View {
        //底部形状
        ZStack {
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder,lineWidth: 0.5)
                }
            //底部导航栏
            HStack {
                Button {
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44,height: 44)
                }
                Spacer()
                NavigationLink(destination: {
                    WeatherView()
                }, label: {
                    Image(systemName: "list.star")
                    .frame(width: 44,height: 44)
                })
            }
            .foregroundColor(.white)
            .padding()
            .font(.title2)
            
        }
        .frame(maxHeight: .infinity,alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action:{})
            .preferredColorScheme(.dark)
    }
}
