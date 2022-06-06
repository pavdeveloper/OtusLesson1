//
//  Tab3SuiView.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 02.06.2022.
//

import SwiftUI

struct Tab4SuiView: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            ActivityIndicatorView(startAnimating: $isAnimating)
            
            BaseButton(title: isAnimating ? "Stop animating" : "Start animating") {
                isAnimating.toggle()
            }
        } // VStack
    } // body
}

struct Tab4SuiView_Previews: PreviewProvider {
    static var previews: some View {
        Tab4SuiView()
    }
}
