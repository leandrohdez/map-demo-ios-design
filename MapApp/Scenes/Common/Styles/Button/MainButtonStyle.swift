//
//  MainButtonStyle.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled
    
    var foregroundColor: Color = Color.white
    
    var backgroundColor: Color = Color.ui.malachite

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(self.foregroundColor(configuration: configuration))
            .font(.system(size: 17).weight(.bold))
            .frame(height: 60, alignment: .center)
            .frame(maxWidth: 300)
            .background(self.backgroundColor(configuration: configuration))
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
    }
    
    private func foregroundColor(configuration: Configuration) -> Color {
        if self.isEnabled {
            return configuration.isPressed ? self.foregroundColor.opacity(0.8) : self.foregroundColor
        } else {
            return self.foregroundColor.opacity(0.8)
        }
    }
    
    private func backgroundColor(configuration: Configuration) -> Color {
        if self.isEnabled {
            return configuration.isPressed ? self.backgroundColor.opacity(0.8) : self.backgroundColor
        } else {
            return self.backgroundColor.opacity(0.5)
        }
    }
}
