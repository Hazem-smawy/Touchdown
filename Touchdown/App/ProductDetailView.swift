//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by hazem smawy on 9/12/22.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Property
    @EnvironmentObject var shop:Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetailView()
                .padding(.horizontal)
            //top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //bottom part
            VStack(alignment: .center, spacing: 0) {
                
                //ratings
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //description
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                //quantity
                FavouriteDetailView()
                    .padding(.vertical, 10)
                //add to cart
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
            }//:VStack
            .zIndex(0)
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        }//:VStack
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProduct.red,
                green:shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ??  sampleProduct.blue
            )
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
