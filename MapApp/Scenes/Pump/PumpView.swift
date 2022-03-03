//
//  PumpView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI
import CoreLocation

struct PumpView: View {
    
    @StateObject private var viewModel: PumpViewModel
    
    @State private var selectedIndex: Int = 0
    
    init(viewModel: PumpViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 16) {
                    VStack {
                        Text("⛽️ Gas Station")
                            .font(.system(size: 21).weight(.bold))
                            .foregroundColor(Color.ui.onyx)
                            .multilineTextAlignment(.center)
                        Text(self.viewModel.station.address)
                            .font(.system(size: 17))
                            .foregroundColor(Color.ui.quickSilver)
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 16) {
                            
                            Spacer().frame(width: UIScreen.main.bounds.width/2 - 40)
                            
                            ForEach(0..<10) { number in
                                PumpButtonView(number: "\(number+1)", isSelected: (self.selectedIndex == number))
                                    .onTapGesture {
                                        self.selectedIndex = number
                                    }
                            }
                            
                            Spacer().frame(width: UIScreen.main.bounds.width/2 - 40)
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            ZStack {
                NavigationLink("Continue") {
                    PumpingProgressView(viewModel: PumpingProgressViewModel(station: self.viewModel.station))
                }
                .buttonStyle(MainButtonStyle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, 16)
        }
        .padding(.top, 16)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct PumpView_Previews: PreviewProvider {
    static var previews: some View {
        PumpView(viewModel: PumpViewModel(station: GasStation(brand: .bp, address: "aa", coordinates: CLLocationCoordinate2D(latitude: 40.45565087257792, longitude: -3.6887494591839145))))
    }
}
