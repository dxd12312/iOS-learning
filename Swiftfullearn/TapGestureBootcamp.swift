//
//  TapGestureBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/16.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 20){
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .pink)
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture (count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()

        }
        .padding(50)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
