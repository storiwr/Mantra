//
//  CardDataModel.swift
//  Mantra
//
//  Created by Stephen on 9/4/20.
//

import Foundation

struct Card: Codable {
    let name: String
    let mantra: String

    static var example: Card {
        Card(name: "I'm Enough", mantra: "I'm enough and I have enough time.")
    }
}
