//
//  ForEachBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/5/17.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Hi","Hello","Hey"]
    
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
