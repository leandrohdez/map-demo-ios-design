//
//  LocationButtonStyle.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct LocationButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled
    
    var foregroundColor: Color = Color.ui.onyx
    
    var backgroundColor: Color = Color.white

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(self.foregroundColor(configuration: configuration))
            .font(.system(size: 17).weight(.bold))
            .frame(width: 56, height: 56, alignment: .center)
            .background(self.backgroundColor(configuration: configuration))
            .cornerRadius(28)
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
            .overlay {
                Image(systemName: "location")
                    .font(.system(size: 24))
                    .foregroundColor(self.foregroundColor(configuration: configuration))
            }
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
