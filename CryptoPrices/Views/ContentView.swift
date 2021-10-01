//
//  ContentView.swift
//  CryptoPrices
//
//  Created by David Malicke on 9/23/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = CryptoViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 15) {
                ForEach(viewModel.coins) { coin in
                    Text(coin.symbol ?? "")
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
