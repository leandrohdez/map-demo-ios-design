//
//  StationView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct StationView: View {
    
    @StateObject private var viewModel: StationViewModel
    
    init(viewModel: StationViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    Image(self.brandImageName())
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(24)
                    HStack {
                        Text("⛽️ Gas Station")
                            .font(.system(size: 21).weight(.bold))
                            .foregroundColor(Color.ui.onyx)
                        Spacer()
                        HStack {
                            Text("24x7")
                                .font(.system(size: 12).weight(.bold))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 4)
                        .background(Color.ui.malachite)
                        .cornerRadius(6)
                    }
                    HStack {
                        Text(self.viewModel.station.address)
                            .font(.system(size: 17))
                            .foregroundColor(Color.ui.quickSilver)
                    }
                }
            }
            ZStack {
                NavigationLink("Continue") {
                    PumpView(viewModel: PumpViewModel(station: self.viewModel.station))
                }
                .buttonStyle(MainButtonStyle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, 16)
        }
        .padding()
        .padding(.top, 16)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

fileprivate extension StationView {
    
    //
    private func brandImageName() -> String {
        switch self.viewModel.station.brand {
        case .shell:    return "shell"
        case .bp:       return "bp"
        case .repsol:   return "repsol"
        case .cepsa:    return "cepsa"
        case .galp:     return "galp"
        }
    }
    
}
