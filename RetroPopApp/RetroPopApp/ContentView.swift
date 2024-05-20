//
//  ContentView.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    
    func botaoEsq() {
           print("Botão esquerdo pressionado")
       }
       
    func botaoDir() {
           for i in 0..<showGrid.count {
               if showGrid[i] {
                   showGrid[i] = false
                   if i + 1 < showGrid.count {
                       showGrid[i + 1] = true
                   }
                   selectedImage = nil // Reset selected image when moving to next grid
                   break
               }
           }
           print("Botão direito pressionado")
       }
    
    func clicaCerto1() {
        print("Alternativa escolhida")
    }
    
    func clicaCerto2() {
        print("Alternativa escolhida")
    }
    
    @State var titulo0 = "Qual o clipe que mais te marcou?"
    
    @State var imagem1 = "thriller"
    @State var imagem2 = "singleladies2"
    @State var imagem3 = "britney"
    @State var imagem4 = "gangnamstyle"


    @State var titulo1 = "Qual desses você jogaria agora?"
    
    @State var imagem5 = "mario2"
    @State var imagem6 = "gta2"
    @State var imagem7 = "mortalkombat"
    @State var imagem8 = "lol2"
    
    //op
    
    @State var showGrid: [Bool] = [true, false]
    @State var selectedImage: Int? = nil

    var body: some View {
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
                
                if showGrid[0] {
                                   GridView(
                                       titulo: $titulo0,
                                       img1: $imagem1,
                                       img2: $imagem2,
                                       img3: $imagem3,
                                       img4: $imagem4,
                                       selectedImage: $selectedImage
                                   )
                               } else if showGrid[1] {
                                   GridView(
                                       titulo: $titulo1,
                                       img1: $imagem5,
                                       img2: $imagem6,
                                       img3: $imagem7,
                                       img4: $imagem8,
                                       selectedImage: $selectedImage
                                   )
                               }
                               
                HStack {
                    
                    Button(action: botaoEsq) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 17, weight: .semibold, design: .rounded))
                            .frame(width: 80, height: 50)
                            .background(.amarelo1)
                        //                        .foregroundStyle(textColor ?? .accentColor)
                            .clipShape(Circle())
                    }
                        .padding()
                    
                        
                    Spacer()
                    
                    Button(action: botaoDir) {
                        Image(systemName: "arrow.right")
                            .font(.system(size: 17, weight: .semibold, design: .rounded))
                            .frame(width: 80, height: 50)
                            .background(.amarelo1)
                        //                        .foregroundStyle(textColor ?? .accentColor)
                            .clipShape(Circle())
                    }
                        .padding()
               
                    
                }
                
                
                // progress bar
                
                
                
            }
            
            .padding()
            .frame(maxWidth: .infinity)
            
        }
        
    }
}

#Preview {
    ContentView()
}
