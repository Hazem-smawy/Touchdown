//
//  Shop.swift
//  Touchdown
//
//  Created by hazem smawy on 9/13/22.
//

import Foundation

class Shop : ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}
