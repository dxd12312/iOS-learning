//
//  ProfileView.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/19.
//

import SwiftUI

struct ProfileView: View {
    
    //app store
    @AppStorage("name") var currentUsername: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
            Text(currentUsername ?? "Your name there")
            Text("This user is \(currentUserAge ?? 0)")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("Sign OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUsername = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation {
            currentUserSignedIn = false
        }
    }
 }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
