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
                    HStack(spacing: 15) {
                        Image(coin.symbol ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                        
                        VStack(alignment: .leading) {
                            Text(coin.symbol ?? "")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Text("$\(coin.quote?.USD?.price ?? 0)")
                                .font(.body)
                            
                        }
                    }
                    .padding(.horizontal)
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
