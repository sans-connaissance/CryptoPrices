//
//  Coin.swift
//  CryptoPrices
//
//  Created by David Malicke on 9/30/21.
//

import Foundation

struct Data: Decodable {
    var coins: [Coin]
    
}


struct Coin: Decodable, Identifiable {
    var id: Int?
    var slug: String?
    var symbol: String?
    var quote: Quote?

}

struct Quote: Decodable {
    var USD: Usd?
    
    
}

struct Usd: Decodable {
    var price: Double?
    
    
}
