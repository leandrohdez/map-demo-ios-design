//
//  LootieView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    var animationName: String
    
    var loopMode: LottieLoopMode = .playOnce
    
    var contentMode: UIView.ContentMode = .scaleAspectFit
    
    var completion: (() -> Void)?

    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView()
        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        uiView.subviews.forEach({ $0.removeFromSuperview() })
        let animationView = AnimationView()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        uiView.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: uiView.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: uiView.heightAnchor)
        ])

        animationView.animation = Animation.named(animationName)
        animationView.contentMode = contentMode
        animationView.loopMode = loopMode
        animationView.play { finished in
            if finished {
                self.completion?()
            }
        }
    }
}
