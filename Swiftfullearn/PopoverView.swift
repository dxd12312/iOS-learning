//
//  PopoverView.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/15.
//

import SwiftUI

struct PopoverView: View {
    
    @State var showScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button("BUTTON") {
                    showScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //sheet
//            .sheet(isPresented: $showScreen) {
//                NewScreen(showSheet: $showScreen)
//            }
            //transition
//            ZStack {
//                if showScreen {
//                    NewScreen(showSheet: $showScreen)
//                        .padding(.top, 200)
//                    .transition(.move(edge: .bottom))
//                    .animation(.easeInOut)
//                }
//            }
//            .zIndex(5.0)
            //offset
                NewScreen(showSheet: $showScreen)
                    .padding(.top, 100)
                    .offset(y: showScreen ? 0 : UIScreen.main.bounds.height)
                    .animation(.spring())
            
            
        }
    }
}

struct NewScreen:View {
    
    @Binding var showSheet: Bool
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.blue
                .ignoresSafeArea()
                Button {
                    showSheet.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                }

        }
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}
