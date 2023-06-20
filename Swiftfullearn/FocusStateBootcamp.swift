//
//  FocusStateBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/20.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum onboradingForm: Hashable {
        case usernamre
        case password
    }
    
    
    @State private var username: String = ""
    @State private var password: String = ""
//    @FocusState private var usernameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInfocue: onboradingForm?
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($fieldInfocue, equals: .usernamre)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .padding(.leading)
                .background(Color.gray)
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInfocue, equals: .password)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .padding(.leading)
                .background(Color.gray)
                .cornerRadius(10)
            
            Button("Sign up") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign up")
                } else if usernameIsValid {
                    fieldInfocue = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInfocue = .usernamre
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            
//
//            Button("TOGGLE FOCUS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(20)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
