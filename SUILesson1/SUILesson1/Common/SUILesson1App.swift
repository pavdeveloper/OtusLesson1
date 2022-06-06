//
//  SUILesson1App.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 02.06.2022.
//

import SwiftUI

@main
struct SUILesson1App: App {
    
    @ObservedObject var tabsViewModel: TabsViewModel = .init()
    
    var body: some Scene {
        WindowGroup {
            Root()
                .environmentObject(tabsViewModel)
        }
    }
}
