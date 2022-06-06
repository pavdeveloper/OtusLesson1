//
//  Tab2SuiView.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 02.06.2022.
//

import SwiftUI

struct Tab2SuiView: View {
    
    @State var listItems: [Int] = .init(arrayLiteral: 1, 2, 3, 4, 5, 6)
    @EnvironmentObject var tabsViewModel: TabsViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1...listItems.count - 1, id: \.self) { item in
                    NavigationLink("Item \(item)") {
                        DetailsSuiView(detailText: "Item \(item)")
                    }
                }
                
                NavigationLink("Item \(listItems.count)", isActive: $tabsViewModel.isNeedToNavigateFor) {
                    DetailsSuiView(detailText: "Item \(listItems.count)")
                }
            } // List
        }// NavView
        .navigationBarTitle(Text("Navigation Title"), displayMode: .inline)
        
    } // Body
}

struct Tab2SuiView_Previews: PreviewProvider {
    static var previews: some View {
        Tab2SuiView()
    }
}
