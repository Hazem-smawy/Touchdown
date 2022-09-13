//
//  ContentView.swift
//  Touchdown
//
//  Created by hazem smawy on 9/12/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body

    var body: some View {
        
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    ScrollView(.vertical,showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical, 20)
                                .frame(minHeight: 300)
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout,spacing: 15) {
                                ForEach(products){product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//:Loop
                            }//:LazyVGrid
                            .padding(15)
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                            
                        }//:VStack
                    }//: Scroll
                    
                }//:VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//:ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
