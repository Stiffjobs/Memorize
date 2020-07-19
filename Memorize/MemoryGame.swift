//
//  MemoryGame.swift
//  Memorize
//
//  Created by Chi Chen on 2020/7/11.
//  Copyright © 2020 Chi Chen. All rights reserved.
//

import Foundation

//MARK: this is the model
struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
       //MARK: fullname MemoryGame.Card
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent //MARK: Don't care type
        var id: Int
    }
}
