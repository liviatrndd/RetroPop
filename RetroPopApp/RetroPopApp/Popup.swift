//
//  Popup.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 23/05/24.
//

import SwiftUI

struct Popup: View {
    
    @Binding var isShowing: Bool
    var refazerAction: () -> Void
    var perfil: String
    // criar popsups diferentes
    
    var body: some View {
        ZStack(alignment: .center) {
            if isShowing {
                Color.black
                    .blur(radius: 3.0)
                    .ignoresSafeArea()
                    .opacity(0.3)
                    .onTapGesture {
                        isShowing = false
                    }
                PopupView
            }
        }
    }
    
    @ViewBuilder
    var PopupView: some View {
        ZStack {
            Image(imageNameForPerfil(perfil: perfil))
            Button(action: refazerAction) {
                Image(systemName: "arrow.counterclockwise")
                    .font(.system(size: 17, weight: .semibold, design: .rounded))
                    .frame(width: 80, height: 50)
                    .background(.amarelo1)
                    .clipShape(Circle())
                    .overlay(
                               Circle().stroke(Color.black, lineWidth: 2)  // Adiciona uma borda preta com 2 pontos de largura
                           )
                    .padding(.top, 400)
            }
        }
    }
    
    func imageNameForPerfil(perfil: String) -> String {
           switch perfil {
           case "anos80":
               return "Resultado80"
           case "anos90":
               return "Resultado90"
           case "anos2000":
               return "Resultado2000"
           case "anosAtual":
               return "anosAtual"
           default:
               return "Resultado2000"
           }
       }
   }


struct Popup_Previews: PreviewProvider {
    @State static var isShowing = true

    static var previews: some View {
        Popup(isShowing: $isShowing, refazerAction: {
            print("Refazer o quiz")
        }, perfil: "anos2000")
    }
}
