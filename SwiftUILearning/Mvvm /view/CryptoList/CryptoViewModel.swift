//
//  CryptoViewModel.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 19.12.2024.
//

import Foundation
import RxSwift
import RxCocoa

class CryptoViewModel {
    
    let cryptos : PublishSubject<[CryptoModel]> = PublishSubject()
    let error : PublishSubject<CryptoError> = PublishSubject()
    let loading : PublishSubject<Bool> = PublishSubject()
    
    func getData(){
        self.loading.onNext(true)
        let cryptoService = CryptoService()
        
    }

}
