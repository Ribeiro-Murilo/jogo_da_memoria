//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ribeiro on 18/11/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmogiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
