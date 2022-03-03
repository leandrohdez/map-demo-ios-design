//
//  PumpingProgressView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct PumpingProgressView: View {
    
    @StateObject private var viewModel: PumpingProgressViewModel
    
    @State private var isShowingResult = false
    
    init(viewModel: PumpingProgressViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ZStack {
            LottieView(
                animationName: "80734-filling-container",
                loopMode: .playOnce,
                contentMode: .scaleAspectFit) {
                    self.isShowingResult = true
                }
            
            NavigationLink("", isActive: self.$isShowingResult, destination: {
                ResultView()
            })
            .hidden()
        }
        .padding(.top, 16)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}
