//
//  TextFieldBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/16.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFeild: String = ""
    @State var data: [String] = []
    var body: some View {
        NavigationView {
            VStack {
              TextField("请输入内容", text: $textFeild)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
                    .foregroundColor(.white)
                Button {
                    saveText()
                } label: {
                    Text("保存")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.cornerRadius(10))
                        .font(.headline)
                        .foregroundColor(.white)
                    
                }
                ForEach(data, id: \.self) { datas in
                    Text(datas)
                }
                
                Spacer()

            }
            .navigationTitle("TextFeild Bootcamp!")
            .padding()
        }
    }
    
    func saveText() {
        data.append(textFeild)
        textFeild = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
