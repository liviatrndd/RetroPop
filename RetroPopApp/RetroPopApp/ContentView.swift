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
                
                
                ZStack{
                    Rectangle()
                        .frame(width: 345, height: 512)
                        .clipShape(.rect(cornerRadius: 10))
                        .foregroundColor(.black)
                        .offset(x: 12, y: 12)
                    
                    Rectangle()
                        .frame(width: 345, height: 512)
                        .clipShape(.rect(cornerRadius: 10))
                        .foregroundColor(.rosaPink)
                    
                    VStack {
                        Text("hit me baby")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        HStack {
                        // Botões alternativas
                            Button(action: clicaCerto1) {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.amarelo2)
                                        .frame(width: 157, height: 206)
                                        .cornerRadius(10.0)
                                    
                                    Image("britney")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 198)
                                        .clipped()
                                        .cornerRadius(10.0)
                                }//.frame(width: 157, height: 206)
                            }
                            
                            Button(action: clicaCerto2) {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.amarelo2)
                                        .frame(width: 157, height: 206)
                                        .cornerRadius(10.0)
                                    
                                    Image("singleladies2")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 198)
                                        .clipped()
                                        .cornerRadius(10.0)
                                }//.frame(width: 157, height: 206)
                            }
                            
                        }
                        HStack{
                            Button(action: clicaCerto2) {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.amarelo2)
                                        .frame(width: 157, height: 206)
                                        .cornerRadius(10.0)
                                    
                                    Image("thriller")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 198)
                                        .clipped()
                                        .cornerRadius(10.0)
                                }//.frame(width: 157, height: 206)
                            }
                            
                            Button(action: clicaCerto2) {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.amarelo2)
                                        .frame(width: 157, height: 206)
                                        .cornerRadius(10.0)
                                    
                                    Image("gangnamstyle")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 198)
                                        .clipped()
                                        .cornerRadius(10.0)
                                }//.frame(width: 157, height: 206)
                            }
                        }
                    }
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
