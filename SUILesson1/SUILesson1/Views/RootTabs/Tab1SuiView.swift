//
//  Tab1SUIView.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 02.06.2022.
//

import SwiftUI

struct Tab1SuiView: View {
    
    @EnvironmentObject var tabsViewModel: TabsViewModel
    
    var body: some View {
        VStack {
            BaseButton(title: "Go to tab 2") {
                tabsViewModel.currentTabSelection = 1
                tabsViewModel.isNeedToNavigateFor = true
            }
        } // VStack
    } // body
}

struct Tab1SUIView_Previews: PreviewProvider {
    static var previews: some View {
        Tab1SuiView()
    }
}
