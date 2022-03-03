//
//  PumpButtonView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct PumpButtonView: View {
    
    var number: String
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            Text(self.number)
                .font(.system(size: 36))
                .foregroundColor(self.isSelected ? Color.ui.darkPastelGreen : Color.ui.onyx)
                .padding(.bottom, 24)
            
            Text("92")
                .font(.system(size: 13))
                .foregroundColor(self.isSelected ? Color.ui.darkPastelGreen : Color.ui.quickSilver)
            Text("95")
                .font(.system(size: 13))
                .foregroundColor(self.isSelected ? Color.ui.darkPastelGreen : Color.ui.quickSilver)
            Text("95+")
                .font(.system(size: 13))
                .foregroundColor(self.isSelected ? Color.ui.darkPastelGreen : Color.ui.quickSilver)
            Text("DF")
                .font(.system(size: 13))
                .foregroundColor(self.isSelected ? Color.ui.darkPastelGreen : Color.ui.quickSilver)
        }
        .frame(width: 80, height: 200, alignment: .center)
        .background(self.isSelected ? Color.ui.mintCream : Color.ui.cultured)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 2)
                .foregroundColor(self.isSelected ? Color.ui.malachite : Color.ui.cultured)
        )
    }
}

struct PumpButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PumpButtonView(number: "01")
    }
}
