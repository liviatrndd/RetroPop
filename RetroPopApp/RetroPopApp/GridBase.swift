//
//  GridBase.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 21/05/24.
//

import Foundation

class Grid: Identifiable {
    var id = UUID()
    var pergunta: String
    var imagens: [String]
    

    init(pergunta: String, imagens: [String]) {
        self.pergunta = pergunta
        self.imagens = imagens
    }
}

var checkGrid: [Bool] = [false, false, false, false, false, false, false] 

var Grids: [Grid] = [
    Grid(pergunta: "Qual o clipe que mais \n te marcou?", imagens: ["thriller", "britney", "singleladies2", "gangnamstyle"]),
    Grid(pergunta: "Se pudesse jogar um desses \n agora, qual seria?", imagens: ["mario2", "mortalkombat", "gta2", "lol2"]),
    Grid(pergunta: "Qual desses artistas você prefere?", imagens: ["madonna", "tim", "pitty", "justin"]),
    Grid(pergunta: "Qual filme você \n conhece ou mais gosta?", imagens: ["titanic", "starwars", "derepente30", "vingadores"]),
    // 5: Qual o meme mais engraçado?
    // 6: Estilo
    // 7: Complete a frase
    // 8: Qual frase você mais compreende ou utiliza?
]

class TextGrid: Identifiable {
    var id = UUID()
    var pergunta: String
    var textos: [String]

    init(pergunta: String, textos: [String]) {
        self.pergunta = pergunta
        self.textos = textos
    }
}

var TextGrids: [TextGrid] = [
    TextGrid(pergunta: "Qual o meme mais \n engraçado?", textos: ["Senta lá, Cláudia", "Passarinho, que som é esse?", "Eu sou ricaaa!", "Fez um grande mousse"]),
    TextGrid(pergunta: "Qual dessas frases você \n mais compreende \n ou utiliza?", textos: ["Viajou na maionese", "Queimou meu filme!", "Value pô, você não é X9", "Não tanko isso véi kkk"]),
    TextGrid(pergunta: "Complete a frase:\n Isso está...",
             textos: ["arretado!", "massa!", "show!", "um arraso!"])
    
                
]
