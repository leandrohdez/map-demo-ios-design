//
//  ResultView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        ZStack {
            LottieView(
                animationName: "success",
                loopMode: .playOnce,
                contentMode: .scaleAspectFit
            )
            .frame(width: 200, height: 200)
        }
        .padding(.top, 16)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}
