//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 15.12.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(favoriteList) { favoriteItem in
                        Section(header: Text(favoriteItem.title)) {
                            ForEach(favoriteItem.elements) { element in
                                NavigationLink(destination: SwiftUIView(chosenFavoriteElement: element)) {
                                    Text(element.name)
                                }
                            }
                        }
                    }
                }.navigationTitle("Navigation")
                NavigationLink(destination: CryptoListUIView()) {
                    Text("Mvvm Project")
                }
            }
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
