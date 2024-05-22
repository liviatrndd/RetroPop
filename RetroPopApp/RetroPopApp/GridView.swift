//
//  GridView.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 20/05/24.
//

import SwiftUI

struct GridView: View {
    
    var grid: Grid
    @Binding var selectedImage: Int?
    
    
    var body: some View {
        
        ZStack{
            
            Image("blops")
                .offset(y: 252)
            
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
                HStack {
                    Spacer()
                    Image("star")
                        .frame(maxHeight: 40)
                    
                    Text(grid.pergunta)
                        .font(.custom("SpecialElite-Regular", size: 19))
                        .bold()
                    Spacer()
                    Spacer()
                    
                }
                VStack(spacing: 20) {
                    HStack {
                        ForEach(0..<2, id: \.self) { index in
                            Button(action: { selectedImage = index + 1 }) {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.yellow)
                                        .frame(width: 157, height: 206)
                                        .cornerRadius(10.0)
                                    
                                    Image(grid.imagens[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 198)
                                        .clipped()
                                        .cornerRadius(10.0)
                                        .opacity(selectedImage == nil || selectedImage == index + 1 ? 1.0 : 0.3)
                                }
                            }
                        }
                    }
                    
                    HStack {
                        ForEach(2..<4, id: \.self) { index in
                            Button(action: { selectedImage = index + 1 }) {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.yellow)
                                        .frame(width: 157, height: 206)
                                        .cornerRadius(10.0)
                                    
                                    Image(grid.imagens[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 198)
                                        .clipped()
                                        .cornerRadius(10.0)
                                        .opacity(selectedImage == nil || selectedImage == index + 1 ? 1.0 : 0.3)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    #Preview {
        ContentView()
    }
    
}
