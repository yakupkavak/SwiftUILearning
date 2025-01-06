//
//  CryptoService.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 3.01.2025.
//

import Foundation

class CryptoService {
    
    func fetchData(url: URL, completion: @escaping (Result<[ThreatModel]?,FetchError>)) {
        URLSession.shared.dataTask(with: URLRequest(url: URL), completionHandler: <#T##(Data?, URLResponse?, (any Error)?) -> Void#>)
    }
}

enum FetchError: Error{
    case badUrl
    case noData
    case parseError
}
