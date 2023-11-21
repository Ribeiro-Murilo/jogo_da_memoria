//
//  ContentView.swift
//  Memorize
//
//  Created by Ribeiro on 18/11/23.
//

import SwiftUI



struct ContentView: View {
    
    //importando o EmogiMemoryGame.swift
    var viewModel: EmogiMemoryGame
    
    var body: some View {
        GeometryReader{ geometry in
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3)) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card).onTapGesture {
                        viewModel.choose(card: card)
                    }
                    .frame(width: 100, height: 100)
                }
        
            }
        }
        .foregroundColor(Color.blue)
        .font(Font.largeTitle)
        .padding()
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack{// como se fosse um conteiner que chama o rectangle e o txt e coloca o de baixo na frente
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("\(card.content)")
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmogiMemoryGame())
    }
}
