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
        Text("Hello, world!")
            .padding()
            .onAppear{
                viewModel.fetchData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
