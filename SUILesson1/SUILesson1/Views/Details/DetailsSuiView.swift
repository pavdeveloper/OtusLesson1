//
//  SwiftUIView.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 06.06.2022.
//

import SwiftUI

struct DetailsSuiView: View {
    
    let detailText: String
    
    var body: some View {
        Text(detailText)
    }
}

struct DetailsSuiView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsSuiView(detailText: "Test")
    }
}
