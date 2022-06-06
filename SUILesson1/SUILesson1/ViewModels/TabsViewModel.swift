//
//  TabsViewModel.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 06.06.2022.
//

import Foundation

class TabsViewModel: ObservableObject {
    @Published var currentTabSelection: Int = 0
    @Published var isNeedToNavigateFor: Bool = false
}
