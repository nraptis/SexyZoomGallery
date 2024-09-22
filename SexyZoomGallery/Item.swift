//
//  Item.swift
//  SexyZoomGallery
//
//  Created by Nicky Taylor on 9/22/24.
//

import Foundation

struct Item {
    let emoji: String
    let name: String
    let index: Int
}

extension Item: Identifiable {
    var id: Int {
        return index
    }
}

func createItems() -> [Item] {
    [
        Item(emoji: "❤️", name: "Red Heart", index: 0),
        Item(emoji: "👻", name: "Ghost", index: 1),
        Item(emoji: "🔥", name: "Fire", index: 2),
        Item(emoji: "😭", name: "Loudly Crying Face", index: 3),
        Item(emoji: "😂", name: "Face with Tears of Joy", index: 4),
        Item(emoji: "💀", name: "Skull", index: 5),
        Item(emoji: "✅", name: "Check Mark Button", index: 6),
        Item(emoji: "😊", name: "Smiling Face with Smiling Eyes", index: 7),
        Item(emoji: "⭐", name: "Star", index: 8),
        Item(emoji: "🎉", name: "Party Popper", index: 9),
        Item(emoji: "👽", name: "Alien", index: 10),
        Item(emoji: "✔️", name: "Check Mark", index: 11),
        Item(emoji: "👍", name: "Thumbs Up", index: 12),
        Item(emoji: "👀", name: "Eyes", index: 13),
        Item(emoji: "🥹", name: "Face Holding Back Tears", index: 14),
        Item(emoji: "🤨", name: "Face with Raised Eyebrow", index: 15),
        Item(emoji: "🐈‍⬛", name: "Black Cat", index: 16),
        Item(emoji: "🫡", name: "Saluting Face", index: 17),
        Item(emoji: "🖥️", name: "Desktop Computer", index: 18),
        Item(emoji: "🤖", name: "Robot", index: 19),
        Item(emoji: "🤍", name: "White Heart", index: 20),
        Item(emoji: "🌖", name: "Waning Gibbous Moon", index: 21),
        Item(emoji: "❌", name: "Cross Mark", index: 22),
        Item(emoji: "🎃", name: "Jack-O-Lantern", index: 23),
        Item(emoji: "📍", name: "Round Pushpin", index: 24),
        Item(emoji: "😍", name: "Smiling Face with Heart-Eyes", index: 25),
        Item(emoji: "😉", name: "Winking Face", index: 26),
        Item(emoji: "❤️‍🩹", name: "Mending Heart", index: 27)
    ]
}
