//
//  ContentView.swift
//  Mantra
//
//  Created by Stephen on 9/4/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showingEditScreen = false
    let card: Card
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    CardDetailView(card: Card.example)
            }.navigationBarTitle("Cards")
            .navigationBarItems(trailing:
                Button(action: {
                self.showingEditScreen = true
            }) {
                Image(systemName: "plus.circle")
        })
        }
        .sheet(isPresented: $showingEditScreen) {
                    NewCardView()
                }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(card: Card.example)
    }
}
