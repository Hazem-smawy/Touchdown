//
//  BrandItemView.swift
//  Touchdown
//
//  Created by hazem smawy on 9/12/22.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - Properties
    let brand:Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray,lineWidth: 1)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[1])
    }
}
