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
    Grid(pergunta: "Qual o clipe que \n mais te marcou?", imagens: ["thriller", "singleladies2", "britney", "gangnamstyle"]),
    Grid(pergunta: "Se pudesse jogar um desses agora, qual seria?", imagens: ["mario2", "gta2", "mortalkombat", "lol2"]),
    Grid(pergunta: "Qual desses artistas você prefere?", imagens: ["madonna", "pitty", "tim", "justin"]),
    Grid(pergunta: "Qual filme você \n conhece ou mais gosta?", imagens: ["titanic", "derepente30", "starwars", "vingadores"]),
    // 5: Qual o meme mais engraçado?
    // 6: Estilo
    // 7: Complete a frase
    // 8: Qual frase você mais compreende ou utiliza?
]
