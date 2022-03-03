//
//  MapAnnotationView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 2/3/22.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var body: some View {
        Circle()
            .strokeBorder(Color.white,lineWidth: 2)
            .background(Circle().foregroundColor(Color.ui.greenPigment))
            .frame(width: 36, height: 36)
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
            .overlay {
                Image(systemName: "fuelpump.fill")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
            }
    }
}
