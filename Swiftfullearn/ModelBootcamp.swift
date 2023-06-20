//
//  ModelBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/16.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let nick: String
    let username: String
    let follow: Int
    let isFollowed:Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(nick: "nick", username: "A nick", follow: 100, isFollowed: false),
        UserModel(nick: "fly", username: "dxd", follow: 200, isFollowed: true),
        UserModel(nick: "down", username: "hjj", follow: 50, isFollowed: false)
            ]
            
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35,height: 35)
                        VStack(alignment: .leading) {
                            Text(user.nick)
                                .font(.headline)
                            Text(user.username)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        VStack {
                            Text("\(user.follow)")
                                .font(.headline)
                            Text("Follows")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        if user.isFollowed {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.orange)
                        } else {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.gray)
                        }
                        
                    }
                    .padding(.vertical, 10)
                }
            }
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
