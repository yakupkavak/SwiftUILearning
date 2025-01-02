//
//  FavoriteModel.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 16.12.2024.
//

import Foundation


struct FavoriteModel: Identifiable {
    var id = UUID()
    var title: String
    var elements: [FavoriteElementModel]
}

struct FavoriteElementModel: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
}

let pikachu = FavoriteElementModel(name: "Pikachu", imageName: "pikachu", description: "Pokemon Avlıyorum")
let pikachu1 = FavoriteElementModel(name: "Pikachu1", imageName: "pikachu", description: "Pokemon Avlıyorum")
let pikachu2 = FavoriteElementModel(name: "Pikachu2", imageName: "pikachu", description: "Pokemon Avlıyorum")

let favoritePokemon = FavoriteModel(title: "Pokemon", elements: [pikachu,pikachu1,pikachu2])

let pikachu3 = FavoriteElementModel(name: "Pikachu3", imageName: "pikachu", description: "Pokemon Avlıyorum")
let pikachu4 = FavoriteElementModel(name: "Pikachu4", imageName: "pikachu", description: "Pokemon Avlıyorum")
let pikachu5 = FavoriteElementModel(name: "Pikachu5", imageName: "pikachu", description: "Pokemon Avlıyorum")

let favoritePokemon1 = FavoriteModel(title: "Pokemon1", elements: [pikachu,pikachu1,pikachu2])

let favoriteList = [favoritePokemon,favoritePokemon1]
