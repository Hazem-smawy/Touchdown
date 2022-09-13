//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by hazem smawy on 9/12/22.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - property
    @EnvironmentObject var shop:Shop
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            Text("Productive Gear")
                .foregroundColor(.white)
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
