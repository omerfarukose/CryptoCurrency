//
//  Webservice.swift
//  CryptoCurrency
//
//  Created by Ömer Faruk KÖSE on 26.10.2021.
//

import Foundation

class Webservice {
    
    func downloadCurrency(url: URL, completion: @escaping ([CryptoModel]?) -> ()){
        URLSession.shared.dataTask(with: url) { (data , response , error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let cryptoList = try? JSONDecoder().decode([CryptoModel].self, from: data)
                
                print(cryptoList)
                
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
            }
        }.resume()
    }
}
