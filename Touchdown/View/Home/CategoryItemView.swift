//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by hazem smawy on 9/12/22.
//

import SwiftUI

struct CategoryItemView: View {
    let category:Category
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 5) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//:HStack
            
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
        }

    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
