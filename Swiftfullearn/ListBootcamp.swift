//
//  ListBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/15.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "apple", "orange","banna","peach"
    ]
    @State var veggies: [String] = [
        "tomato", "胡萝卜","茄子"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove (perform: move)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                .foregroundColor(.pink)
                }
                .listRowBackground(Color.pink)
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove (perform: move)
                } header: {
                    Text("Veggies")
                }
            }
            .navigationTitle("购物清单")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        
    }
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    func delete(indexet: IndexSet) {
        fruits.remove(atOffsets: indexet)
    }
    func move(indexet: IndexSet,fruitIndex: Int) {
        fruits.move(fromOffsets: indexet, toOffset: fruitIndex)
    }
    func add() {
        fruits.append("西瓜")
    }
}



struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
