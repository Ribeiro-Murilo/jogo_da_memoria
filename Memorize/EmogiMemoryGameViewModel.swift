//
//  EmogiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Ribeiro on 19/11/23.
//

import SwiftUI


class EmogiMemoryGame {
    private(set) var model: MemoryGame<String> = EmogiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emogis: Array<String> = ["👻", "🎃", "🔥", "🌚", "🐶", "🥷🏻", "😼", "🤠", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emogis.count){ pairIndex in
                return emogis[pairIndex]
        }
    }
    //MARK: -Acess model
        
    var cards:Array<MemoryGame<String>.Card>{
        model.cards
    }

    //MARK: -Intent

    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
