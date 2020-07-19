//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Chi Chen on 2020/7/14.
//  Copyright © 2020 Chi Chen. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "😎", "🥶"]
        let random = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairsOfCards: random) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards //set up in the model
    }
    
    //MARK: Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card) // use the function write in the model
        
    }
}
