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

var Grids: [Grid] = [
    Grid(pergunta: "Qual o clipe que mais \n te marcou?", imagens: ["thriller", "singleladies2", "britney", "gangnamstyle"]),
    Grid(pergunta: "Se pudesse jogar um desses \n agora, qual seria?", imagens: ["mario2", "gta2", "mortalkombat", "lol2"]),
    Grid(pergunta: "Qual desses artistas você prefere?", imagens: ["madonna", "pitty", "tim", "justin"]),
    Grid(pergunta: "Qual filme você \n conhece ou mais gosta?", imagens: ["titanic", "derepente30", "starwars", "vingadores"]),
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
    TextGrid(pergunta: "Qual o meme mais \n engraçado?", textos: ["Meme 1", "Meme 2", "Meme 3", "Meme 4"]),
    TextGrid(pergunta: "Qual dessas frases você \n mais compreende ou utiliza?", textos: ["Casual", "Esportivo", "Elegante", "Moderno"]),
    TextGrid(pergunta: "Complete a frase:\n Eu sou...", textos: ["Feliz", "Trabalhador", "Criativo", "Engraçado"]),
]
