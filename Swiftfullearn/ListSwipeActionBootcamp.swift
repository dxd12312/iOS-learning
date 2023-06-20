//
//  ListSwipeActionBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/20.
//

import SwiftUI



struct ListSwipeActionBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange","banna","peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true, content: {
                        Button("delete") {
                            
                        }
                        .tint(.red)
                        Button("save") {
                            
                        }
                        .tint(.green)
                        Button("not show") {
                            
                        }
                        .tint(.black)
                    })
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
    func delete(index: IndexSet) {
        
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
