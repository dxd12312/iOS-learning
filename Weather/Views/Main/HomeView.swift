//
//  HomeView.swift
//  Weather
//
//  Created by dxd on 2023/6/8.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.83
    case middle = 0.385
}

struct HomeView: View {
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    @State var bottomSheetTranslation: CGFloat = BottomSheetPosition.middle.rawValue
    @State var hasDragged: Bool =  false
    var bottomSheetTranslationProrated: CGFloat {
        (bottomSheetTranslation - BottomSheetPosition.middle.rawValue) / (BottomSheetPosition.top.rawValue - BottomSheetPosition.middle.rawValue)
    }
    var body: some View {
        NavigationView {
            GeometryReader { geomtry in
                let screenHight = geomtry.size.height + geomtry.safeAreaInsets.top + geomtry.safeAreaInsets.bottom
                let imageOffset = screenHight + 36
                ZStack {
                    //背景色
                    Color.background
                        .ignoresSafeArea()
                    //背景图片
                    Image("Background")
                        .resizable()
                        .ignoresSafeArea()
                        .offset(y: -bottomSheetTranslationProrated * imageOffset)
                    //房子图片
                    Image("House")
                        .frame(maxHeight: .infinity,alignment: .top)
                        .padding(.top,257)
                        .offset(y: -bottomSheetTranslationProrated * imageOffset)
                    VStack (spacing: -10 * (1 - bottomSheetTranslationProrated)){
                        Text("Montreal")
                            .font(.largeTitle)
                        VStack {
                            Text(attrubitedString)
                            Text("H:24°  L:18°")
                                .font(.title3.weight(.semibold))
                                .opacity(1 - bottomSheetTranslationProrated)
                        }
                
                        Spacer()
                        
                    }
                    .padding(.top,51)
                    .offset(y: -bottomSheetTranslationProrated * 46)
                    //bottom sheet
                    BottomSheetView(position: $bottomSheetPosition) {
//                        Text(bottomSheetTranslationProrated.formatted())
                    } content: {
                        ForecastView(bottomSheetTranslationProrated: bottomSheetTranslationProrated)
                    }
                    .onBottomSheetDrag { translation in
                        bottomSheetTranslation = translation / screenHight
                        
                        
                        withAnimation(.easeInOut) {
                            if bottomSheetPosition == BottomSheetPosition.top
                            {
                                hasDragged = true
                            } else {
                                hasDragged = false
                            }
                        }
                        
                    }

                    //底部导航栏
                    TabBar(action: {
                        bottomSheetPosition = .top
                    })
                    .offset(y: bottomSheetTranslationProrated * 115)
                }
            }
            .navigationBarHidden(true)
        }
    }
    private var attrubitedString: AttributedString {
        var string = AttributedString("19°" + (hasDragged ? " | ":"\n ") + "Mostly Clear")
        if let temp = string.range(of: "19°") {
            string[temp].font = .system(size: (96 - (bottomSheetTranslationProrated * (96 - 20))), weight: hasDragged ? .semibold : .thin)
            string[temp].foregroundColor = hasDragged ? .secondary : .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary.opacity(bottomSheetTranslationProrated)
        }
        
        if let weather = string.range(of: "Mostly Clear") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
