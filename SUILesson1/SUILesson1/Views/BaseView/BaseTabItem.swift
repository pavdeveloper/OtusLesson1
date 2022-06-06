//
//  BaseTabItem.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 02.06.2022.
//

import SwiftUI

struct BaseTabItem: View {
    
    var itemText: String
    var itemImage: String
    
    var body: some View {
        HStack {
            Text(itemText)
                
            Image(systemName: itemImage)
        }
    }
}

struct BaseTabItem_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabItem(itemText: "Test",
                    itemImage: "")
    }
}
