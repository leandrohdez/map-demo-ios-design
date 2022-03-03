//
//  MainSearchTextFieldStyle.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct MainSearchTextFieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .textFieldStyle(PlainTextFieldStyle())
            .multilineTextAlignment(.center)
            .foregroundColor(Color.ui.onyx)
            .font(.system(size: 16))
            .padding(.vertical, 14)
            .padding(.horizontal, 16)
            .background(self.textFieldBorder)
    }

    private var textFieldBorder: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.ui.platinum)
    }
    
}
