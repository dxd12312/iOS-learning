//
//  ViewModelBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/17.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArrary: [FruitModel] = []
    
    func getFruit() {
        let fruit1 = FruitModel(name: "Banna", count: 30)
        let fruit2 = FruitModel(name: "Watermeno", count: 40)
        let fruit3 = FruitModel(name: "Mango", count: 50)
        fruitArrary.append(fruit1)
        fruitArrary.append(fruit2)
        fruitArrary.append(fruit3)
    }
    func deleteFruit(index: IndexSet) {
        fruitArrary.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    //StateObject 用于一个页面
    //ObservedObject在多个视图之间共享同一份数据时，可以使用ObservedObject来保持数据的同步。ObservedObject需要手动管理其生命周期，并在需要时手动更新视图
    @ObservedObject var fruitModel: FruitViewModel = FruitViewModel()
//    @StateObject
//    @State var fruitArrary: [FruitModel] = [
//        FruitModel(name: "Peach", count: 10),
//        FruitModel(name: "Apple", count: 5),
//    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitModel.fruitArrary) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundColor(.blue)
                        Text("\(fruit.name)")
                            .font(.headline)
                    }
                }
                .onDelete(perform: fruitModel.deleteFruit)
            }
            .onAppear {
                fruitModel.getFruit()
            }
            .navigationTitle("Fruit List")
        }
    }
    
 }

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
