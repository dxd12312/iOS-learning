//
//  ActionSheetBootcamp.swift
//  Swiftfullearn
//
//  Created by dxd on 2023/6/16.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button("Click me") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    func getActionSheet() -> ActionSheet {
        
        let button1 = ActionSheet.Button.default(Text("DEFALUT"))
        let button2 = ActionSheet.Button.destructive(Text("DESTRUCTIVE"))
        let button3 = ActionSheet.Button.cancel(Text("取消"))
        
        return ActionSheet(title: Text("消息"), message: Text("内容"), buttons: [button1, button2, button3])
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
