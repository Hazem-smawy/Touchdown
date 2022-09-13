//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by hazem smawy on 9/12/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack {
            Button {
                feedback.impactOccurred()
                withAnimation(.easeIn) {
                    
                    shop.showingProduct = false
                    
                    shop.selectedProduct = nil
                    
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                
            }
            Spacer()
            
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
