//
//  Tab3SuiView.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 02.06.2022.
//

import SwiftUI

struct Tab3SuiView: View {
    
    @State var isModalPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Tab3")
            
            BaseButton(title: "Show modal") {
                isModalPresented.toggle()
            }
            
        } // VStack
        .sheet(isPresented: $isModalPresented) {
            Text("Presented")
        }
    } // body
}

struct Tab3SuiView_Previews: PreviewProvider {
    static var previews: some View {
        Tab3SuiView()
    }
}
