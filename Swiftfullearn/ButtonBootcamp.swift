//
//  ButtonBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/20.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "Title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "Button 1#"
            }
            .accentColor(.yellow)
            
            Button {
                self.title = "Button 2#"
            } label: {
                Text("提交")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal,150)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            
            Button {
                self.title = "Button 3#"
            } label: {
                Circle()
                    .fill(Color.white)
                    .shadow(radius: 10)
                    .frame(width: 100,height: 100)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    }
            }
            Button {
                self.title = "Button 3#"
            } label: {
                Text("结束")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Capsule()
                            .stroke(Color.gray,lineWidth: 2.0)
                    )
            }


        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
