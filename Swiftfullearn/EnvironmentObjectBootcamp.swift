//
//  EnvironmentObjectBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/19.
//

import SwiftUI

class EnviromentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone","iPad","Mac","Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnviromentViewModel = EnviromentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
        }
        .environmentObject(viewModel)
    }
}

struct DetailView:View {
     let selectItem: String
    var body: some View {
        
        ZStack {
            Color.orange.ignoresSafeArea()
            NavigationLink {
                FinalView()
            } label: {
                Text(selectItem)
                    .foregroundColor(.white)
                    .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.vertical, 10)
            }
        }
        
    }
}

struct FinalView:View {
    @EnvironmentObject var viewModel: EnviromentViewModel
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color.blue, Color.blue.opacity(0.5)], startPoint: .bottomLeading, endPoint: .topTrailing).ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20.0) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
        
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
