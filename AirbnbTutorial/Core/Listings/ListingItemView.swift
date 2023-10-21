//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by dxd on 2023/10/21.
//

import SwiftUI

struct ListingItemView: View {

    var body: some View {
        VStack(spacing: 8){
            // 图片
            ListingImageCarouseView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            //内容
            HStack(alignment: .top) {
                
                VStack(alignment: .leading) {
                    Text("加拿大, 魁北克")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12平方米")
                        .foregroundStyle(.gray)
                    
                    Text("10.21-27")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("¥1601")
                            .fontWeight(.semibold)
                        Text("每晚")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                //星星
                HStack (spacing: 2){
                    Image(systemName: "star.fill")
                    Text("5.0")
                }
                .foregroundStyle(.black)
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
