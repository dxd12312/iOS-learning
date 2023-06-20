//
//  AlertBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/16.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var backgroundColor: Color = .yellow
    @State var alertType: MyAlerts? = nil
    @State var showAlert: Bool = false
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            VStack {
                Button("Button 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
                    showAlert.toggle()
                }
               
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("错误"))
        case .success:
            return Alert(title: Text("正确"),message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .pink
            }))
        default:
            return Alert(title: Text("Error"))
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
