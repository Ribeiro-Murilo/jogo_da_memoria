//
//  MemoryGameModel.swift
//  Memorize
//
//  Created by Ribeiro on 19/11/23.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    mutating func choose(card: Card){
        print("card chosen \(card)")
    }
    
    init(numberOfPairsOfCards: Int, CardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = CardContentFactory (pairIndex)
            cards.append (Card(content: content, id: pairIndex*2))
            cards.append (Card(content: content, id: pairIndex*2+1))
        }
    }
    
    
    struct Card: Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}

