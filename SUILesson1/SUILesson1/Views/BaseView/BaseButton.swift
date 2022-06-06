//
//  BaseButton.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 06.06.2022.
//

import SwiftUI

struct BaseButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(title)
        })
        .frame(width: 150, height: 20)
        .foregroundColor(Color.white)
        .padding()
        .background(Color.blue)
        .cornerRadius(15)
    }
}

struct BaseButton_Previews: PreviewProvider {
    static var previews: some View {
        BaseButton(title: "Test",
                   action: {
            print("hello")
        })
    }
}
