//
//  CardDetailView.swift
//  Mantra
//
//  Created by Stephen on 9/4/20.
//

import SwiftUI

struct CardDetailView: View {
   let card: Card
    var body: some View {
        VStack(alignment: .leading) {
            Text(card.name)
                .font(.headline)
            Text(card.mantra)
                .font(.body)
        }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: Card.example)
    }
}
