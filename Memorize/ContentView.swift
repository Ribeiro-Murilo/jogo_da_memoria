//
//  ContentView.swift
//  Memorize
//
//  Created by Ribeiro on 18/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{//ordena todos na mesma tela
            ForEach(0..<2, content: { index in
                CardView()
            })
        }
        .foregroundColor(Color.blue)
        .font(Font.largeTitle)
        .padding()
    }
}

struct CardView: View {
    var IsFaceUp: Bool = false
    
    var body: some View{
        ZStack{// como se fosse um conteiner que chama o rectangle e o txt e coloca o de baixo na frente
            if IsFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
