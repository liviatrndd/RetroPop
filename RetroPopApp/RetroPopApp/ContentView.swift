//
//  ContentView.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    
    func botaoEsq() {
        print("")
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .foregroundColor(Color.azulClaro).ignoresSafeArea()
            
            VStack (alignment: .center, spacing: 20){
                Image(.logo2)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 270, height: 177)
                //.offset(y: -40)
                    .padding(.top, -50)
                    .padding(.bottom, -40)
                
                
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
                }
                
                HStack {
                    //                            Text(buttonText)
                    //                                .font(.system(size: 20, weight: .medium, design: .rounded))
                    //                                .kerning(0.5)
                    //                            if usesSymbol {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 17, weight: .semibold, design: .rounded))
                        .frame(width: 80, height: 50)
                        .background(.amarelo1)
                        //                        .foregroundStyle(textColor ?? .accentColor)
                        .clipShape(Circle())
                        .padding()
                    
                        //                        .onTapGesture {
                        //                            withAnimation(.easeInOut) {
                        //                                action(botaoEsq())
                        //                            }
                        //                        }
                        
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                        .font(.system(size: 17, weight: .semibold, design: .rounded))
                        .frame(width: 80, height: 50)
                        .background(.amarelo1)
                        //                        .foregroundStyle(textColor ?? .accentColor)
                        .clipShape(Circle())
                        .padding()
               
                    
                }
                
            }
            
            .padding()
            .frame(maxWidth: .infinity)
            
        }
        
    }
}

#Preview {
    ContentView()
}
