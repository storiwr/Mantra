//
//  NewCardView.swift
//  Mantra
//
//  Created by Stephen on 9/4/20.
//

import SwiftUI

struct NewCardView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var cards = [Card]()
    @State private var newName = ""
    @State private var newMantra = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Add new card")) {
                    TextField("Title", text: $newName)
                    TextField("Mantra", text: $newMantra)
                    Button("Add card", action: addCard)
                }

            }
        }
    }
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }

    func loadData() {
        if let data = UserDefaults.standard.data(forKey: "Cards") {
            if let decoded = try? JSONDecoder().decode([Card].self, from: data) {
                self.cards = decoded
            }
        }
    }

    func saveData() {
        if let data = try? JSONEncoder().encode(cards) {
            UserDefaults.standard.set(data, forKey: "Cards")
        }
    }

    func addCard() {
        let card = Card(name: newName, mantra: newMantra)
        cards.insert(card, at: 0)
        saveData()
    }

    func removeCards(at offsets: IndexSet) {
        cards.remove(atOffsets: offsets)
        saveData()
    }
}

struct NewCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewCardView()
    }
}
