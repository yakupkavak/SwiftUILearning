//
//  CryptoListUIView.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 16.12.2024.
//

import SwiftUI

struct CryptoListUIView: View {
    @State var cryptoList: [CryptoModel] = []
    @State var error: CryptoError?
    
    let service = CryptoService()
    
    var body: some View {
        NavigationView {
            List(cryptoList,id: \.currency){ crypto in
                Text(crypto.currency)
            }
        }.onAppear{
            fetchData()
        }
    }
    
    func fetchData(){
        service.getCryptoList { result in
            switch result{
            case .success(let dataList):
                DispatchQueue.main.async {
                    self.cryptoList = dataList
                }
            case .failure(let error):
                self.error = error
            }
        }
    }
}

#Preview {
    CryptoListUIView()
}
