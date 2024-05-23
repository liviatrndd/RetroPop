//
//  ContentView.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var GridsToView = Grids
    @State var current: Int = 0
    @State var selectedImage: Int? = nil
    @State var selectedText: Int? = nil
    @State var showPopup = false
    
    //perfis
    @State var anos80: Int = 0
    @State var anos90: Int = 0
    @State var anos2000: Int = 0
    @State var anosAtual: Int = 0
    
    var totalGrids: Int {
           return Grids.count + TextGrids.count
       }
    
     func botaoEsq() {
          if current > 0 {
              current -= 1
              selectedImage = nil // Reset selected image when moving to the previous grid
              selectedText = nil // Reset selected text when moving to the previous grid
          }
          print("Botão esquerdo pressionado")
      }
      
       
    func botaoDir() {
        if showPopup == false {
            if current < totalGrids { //se a pessoa chegou ate a ultima tela
                checkGrid[current] = true
            }
            
            showPopup = checkGrid.allSatisfy({ gridElement in
                gridElement == true
            })
        }
        
        if current < totalGrids - 1 {
            current += 1
            selectedImage = nil // Reset selected image when moving to the next grid
            selectedText = nil // Reset selected text when moving to the next grid
        }
        
        print(showPopup)
        print("Botão direito pressionado")
     }
    
    func Refazer(){
        current = 0
        selectedImage = nil
        selectedText = nil
        showPopup = false
        anos80 = 0
        anos90 = 0
        anos2000 = 0
        anosAtual = 0
        for i in 0..<checkGrid.count {
            checkGrid[i] = false
        }
        print("Refazer o quiz")
    }
    
//    func clicaCerto1() {
//        print("Alternativa escolhida")
//    }
//    
//    func clicaCerto2() {
//        print("Alternativa escolhida")
//    }
    
    func atribuirPontos(para perfil: String) {
            switch perfil {
            case "anos80":
                anos80 += 1
            case "anos90":
                anos90 += 1
            case "anos2000":
                anos2000 += 1
            case "anosAtual":
                anosAtual += 1
            default:
                break
            }
        }
    
    func calcularPerfil() -> String {
        let perfis = [
            "anos80": anos80,
            "anos90": anos90,
            "anos2000": anos2000,
            "anosAtual": anosAtual
        ]
        return perfis.max(by: { $0.value < $1.value })?.key ?? "anos2000"
    }
    

    var body: some View {
        ZStack {
            ZStack(alignment: .top) {
                Rectangle()
                    .foregroundColor(Color.azulClaro).ignoresSafeArea()
                
                VStack (alignment: .center, spacing: 10){
                    Image("logo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260, height: 170)
                    //.offset(y: -40)
                        .padding(.top, -60)
                        .padding(.bottom, -30)
                    
                    if current < Grids.count {
                        GridView(grid: Grids[current], selectedImage: $selectedImage, atribuirPontos: atribuirPontos)
                    } else if current - Grids.count < TextGrids.count {
                        ListView(grid: TextGrids[current - Grids.count], selectedText: $selectedText, atribuirPontos: atribuirPontos)
                    }
                    
                    HStack {
                        
                        Button(action: botaoEsq) {
                            Image(systemName: "arrow.left")
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .frame(width: 80, height: 50)
                                .background(.amarelo1)
                            //                        .foregroundStyle(textColor ?? .accentColor)
                                .clipShape(Circle())
                                .overlay(
                                           Circle().stroke(Color.black, lineWidth: 2)  // Adiciona uma borda preta com 2 pontos de largura
                                       )
                        }
                        .padding()
                        .disabled(current == 0)
                        
                        
                        Spacer()
                        
                        Button(action: botaoDir) {
                            Image(systemName: "arrow.right")
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .frame(width: 80, height: 50)
                                .background(.amarelo1)
                            //                        .foregroundStyle(textColor ?? .accentColor)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.black, lineWidth: 2)  // Adiciona uma borda preta com 2 pontos de largura
                                       )
                        }
                        .padding()
                        .disabled(selectedImage == nil && selectedText == nil)
                        
                        
                    }
                    
                    // progress bar
                    
                    HStack {
                                           Spacer()
                                           ProgressView(value: Double(current + 1), total: Double(totalGrids))
                                               .progressViewStyle(LinearProgressViewStyle(tint: .rosaPink))
                                               .frame(width: 320, height: 5)
                                               .animation(.easeInOut, value: current)
                                           Spacer()
                                       }
                                       .padding(.bottom, 20)
                    
                }
                
                .padding()
                .frame(maxWidth: .infinity)
                
            }
            if showPopup {
                Popup(isShowing: $showPopup, refazerAction: Refazer, perfil: calcularPerfil())
            }
        }
        
    }
}

#Preview {
    ContentView()
}
