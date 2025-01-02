//
//  SwiftUIView.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 15.12.2024.
//

import SwiftUI

struct SwiftUIView: View {
    
    var chosenFavoriteElement: FavoriteElementModel
    
    let myArray = ["James","Pikachu","Melis Sama"]
    
    var body: some View {
        VStack{
            Text(chosenFavoriteElement.name)
            Image(chosenFavoriteElement.imageName).resizable().aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width / 3,height: UIScreen.main.bounds.width / 3)
            Text(chosenFavoriteElement.description)
                
        }
        /*
        List (myArray, id: \.self) { element in
            Image("pikachu").resizable().aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width / 3,height: UIScreen.main.bounds.width / 3)
            Text(element)
         }
         */
    }
}

#Preview {
    SwiftUIView(chosenFavoriteElement: pikachu)
}
