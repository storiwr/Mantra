//
//  ContentView.swift
//  Mantra
//
//  Created by Stephen on 9/4/20.
//

import SwiftUI

struct ContentView: View {
    let card: Card
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                CardDetailView(card: Card.example)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(card: Card.example)
    }
}
