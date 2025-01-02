//
//  StateView.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 15.12.2024.
//

import SwiftUI

struct StateView: View {
    
    @State var myName = "yakup"
    @State var changeName = "pikachu"
    var body: some View {
        VStack {
            Text(myName).padding()
            Button(action: {
                myName = "Pikachu"
            }) {
                Text("My Button")
            }
            Text(changeName)
            TextField("Place Holder", text: $changeName)
        }
    }
}

#Preview {
    StateView()
}
