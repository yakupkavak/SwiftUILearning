//
//  CryptoService.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 16.12.2024.
//

import Foundation

enum CryptoError: Error {
    case serverError
    case networkERror
}

class CryptoService {
 
    func getCryptoList(completation: @escaping (Result<[CryptoModel],CryptoError>) -> ()) {
        
        URLSession.shared.dataTask(with: URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!) { data, response, error in
            if let _ = error {
                completation(.failure(.networkERror))
            }else if let data = data {
                let cryptoList = try? JSONDecoder().decode([CryptoModel].self, from: data)
                if let cryptoListDetail = cryptoList{
                    completation(.success(cryptoListDetail))
                }else {
                    completation(.failure(.serverError))
                }
            }
        }.resume()
        
    }
}
