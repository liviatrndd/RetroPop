//
//  ContentView.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var GridsToView = Grids
    @State private var current: Int = 0
    @State private var selectedImage: Int? = nil
    
    func botaoEsq() {
        if current > 0 {
                   current -= 1
                   selectedImage = nil // Reset selected image when moving to the previous grid
        }
               print("Botão esquerdo pressionado")
    }
       
    func botaoDir() {
        if current < GridsToView.count - 1 {
                   current += 1
                   selectedImage = nil // Reset selected image when moving to the next grid
               }
               print("Botão direito pressionado")
       }
    
    func clicaCerto1() {
        print("Alternativa escolhida")
    }
    
    func clicaCerto2() {
        print("Alternativa escolhida")
    }
    

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
                
                if current < GridsToView.count {
                                   GridView(grid: GridsToView[current], selectedImage: $selectedImage)
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
