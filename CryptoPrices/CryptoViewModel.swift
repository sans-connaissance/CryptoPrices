//
//  CryptoViewModel.swift
//  CryptoPrices
//
//  Created by David Malicke on 9/23/21.
//

import Foundation
import SwiftUI
import Alamofire

class CryptoViewModel: ObservableObject {
    
    func fetchData() {
        let headers: HTTPHeaders = [
            "Accepts": "application/json",
            "X-CMC_PRO_API_KEY" : "",
        ]
        
        AF.request("https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest", headers: headers).responseJSON {
            response in
            print(response)
        }
        
    }
    
}

