//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by hazem smawy on 9/12/22.
//

import SwiftUI

struct FeatureItemView: View {
    // MARK: - Properties
    let player: Player
    var body: some View {
        
        Image(player.image)
            .resizable()
            .scaledToFill()
            .cornerRadius(12)
    }
}

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
