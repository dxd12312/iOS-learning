//
//  TransitionBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/14.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
           
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: AnyTransition.opacity.animation(.easeInOut))
                    .animation(.easeInOut))
//                .transition(AnyTransition.opacity.animation(.easeOut))
                              
            }
        }
        
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
