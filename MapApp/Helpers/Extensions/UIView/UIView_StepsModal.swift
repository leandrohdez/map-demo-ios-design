//
//  UIView_StepsModal.swift
//  MapApp
//
//  Created by Leandro Hernandez on 2/3/22.
//

import SwiftUI

extension View {
    
    //
    func stepsModal<ModalView: View> (showModal: Binding<Bool>, @ViewBuilder modalView: @escaping () -> ModalView) -> some View {
        return self
            .background(
                StepsModalHelper(modalView: modalView(), showModal: showModal)
            )
    }
    
}

//
fileprivate struct StepsModalHelper<ModalView: View>: UIViewControllerRepresentable {
    
    var modalView: ModalView
    
    @Binding var showModal: Bool
    
    let controller = UIViewController()
    
    func makeUIViewController(context: Context) -> UIViewController {
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
        if showModal {
            let modalController = StepsHostingController(rootView: modalView)
            uiViewController.present(modalController, animated: true) {
                DispatchQueue.main.async {
                    self.showModal.toggle()
                }
            }
        }
    }
    
}

//
fileprivate class StepsHostingController<Content: View>: UIHostingController<Content>{
    
    override func viewDidLoad() {
        
        if let presentation = presentationController as? UISheetPresentationController {
            
            presentation.detents = [
                .medium(),
                .large()
            ]
            
            presentation.prefersGrabberVisible = true
        }
    }
    
}
