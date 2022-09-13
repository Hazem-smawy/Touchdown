//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by hazem smawy on 9/12/22.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(players) {player in
                FeatureItemView(player: player)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
            }
        }//: Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
           
            .background(.gray)
    }
}
