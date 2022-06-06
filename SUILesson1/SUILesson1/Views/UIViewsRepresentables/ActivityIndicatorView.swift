//
//  ActivityView.swift
//  SUILesson1
//
//  Created by Алексей Плакош on 06.06.2022.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    @Binding var startAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }

    func updateUIView(_ uiView: UIActivityIndicatorView,
                      context: Context) {
        if self.startAnimating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
