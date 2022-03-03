//
//  LocationButtonView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct LocationButtonView: View {
    
    var body: some View {
        ZStack {
            Button {
                print("Location Action")
            } label: {
                Spacer()
            }
            .buttonStyle(LocationButtonStyle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        .padding(.horizontal, 24)
        .padding(.bottom, 40)
    }
}
