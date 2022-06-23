//
//  ContentView.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 02.06.2022.
//

import SwiftUI

struct Root: View {
    
    @EnvironmentObject var tabsViewModel: TabsViewModel
    
    var body: some View {
        TabView(selection: $tabsViewModel.currentTabSelection) {
            Tab1SuiView()
                .font(.title)
                .tabItem {
                    BaseTabItem(itemText: "Tab1",
                                itemImage: "calendar")
                }
                .tag(0)
            Tab2SuiView()
                .font(.title)
                .tabItem {
                    BaseTabItem(itemText: "Tab2",
                                itemImage: "bookmark.square.fill")
                }
                .tag(1)
            Tab3SuiView()
                .font(.title)
                .tabItem {
                    BaseTabItem(itemText: "Tab3",
                                itemImage: "cloud.snow.fill")
                }
                .tag(2)
            Tab4SuiView()
                .font(.title)
                .tabItem {
                    BaseTabItem(itemText: "Tab4",
                                itemImage: "pencil")
                }
                .tag(3)
        } // tabview
    } // body
}

struct Root_Previews: PreviewProvider {
    static var previews: some View {
        Root()
            .environmentObject(TabsViewModel())
    }
}
