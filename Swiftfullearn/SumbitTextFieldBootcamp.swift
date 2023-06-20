//
//  SumbitTextFieldBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/20.
//

import SwiftUI

struct SumbitTextFieldBootcamp: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        TextField("输入...", text: $username)
            .submitLabel(.route)
            .onSubmit {
                print("写点东西!")
            }
    }
}

struct SumbitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SumbitTextFieldBootcamp()
    }
}
