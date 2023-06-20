//
//  DatePickerBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/16.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var currentUserID: String? = nil
    @State var displagText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView(content: {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displagText {
                    Text(text)
                        .font(.title)
                }
                //不要使用！
//                Text(displagText!)
//                    .font(.title)
//                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        })
    }
    
    func loadData() {
        
        if let userId = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                displagText = "This is new data! User id is: \(userId)"
                isLoading = false
            }
        } else {
            displagText = "Error no userId"
        }
    }
    
    func loadData2() {
        guard let userId = currentUserID else {
            displagText = "Error no userId"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            displagText = "This is new data! User id is: \(userId)"
            isLoading = false
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
