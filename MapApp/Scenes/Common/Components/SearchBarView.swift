//
//  SearchBarView.swift
//  MapApp
//
//  Created by Leandro Hernandez on 3/3/22.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack {
            Color.white
            HStack(spacing: 0) {
                Button {
                    print("Action Button")
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .font(.system(size: 19))
                        .foregroundColor(Color.ui.onyx)
                }
                .frame(width: 56)
                .padding(.leading, 2)

                TextField("Search", text: self.$searchText)
                    .textFieldStyle(MainSearchTextFieldStyle())

                Button {
                    print("Action Button")
                } label: {
                    Image(systemName: "mic")
                        .font(.system(size: 19))
                        .foregroundColor(Color.ui.onyx)
                }
                .frame(width: 56)
                .padding(.trailing, 2)
            }
        }
        .cornerRadius(20)
        .frame(height: 60)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding([.horizontal, .vertical], 24)
        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
