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
                Text(grid.pergunta)
                    .font(.custom("SpecialElite-Regular", size: 19))
                    .bold()
                    
                
                HStack {
                    // Botões alternativas
                    Button(action: { selectedImage = 1 }) {
                        ZStack {
                            Rectangle()
                                .fill(Color.amarelo2)
                                .frame(width: 157, height: 206)
                                .cornerRadius(10.0)
                            
                            Image(grid.imagens[0])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 198)
                                .clipped()
                                .cornerRadius(10.0)
                                .opacity(selectedImage == nil || selectedImage == 1 ? 1.0 : 0.3)
                            
                        }//.frame(width: 157, height: 206)
                    }
                    
                    Button(action: { selectedImage = 2 }) {
                        ZStack {
                            Rectangle()
                                .fill(Color.amarelo2)
                                .frame(width: 157, height: 206)
                                .cornerRadius(10.0)
                            
                            Image(grid.imagens[1])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 198)
                                .clipped()
                                .cornerRadius(10.0)
                                .opacity(selectedImage == nil || selectedImage == 2 ? 1.0 : 0.3)
                        }//.frame(width: 157, height: 206)
                    }
                    
                }
                HStack{
                    Button(action: { selectedImage = 3 }) {
                        ZStack {
                            Rectangle()
                                .fill(Color.amarelo2)
                                .frame(width: 157, height: 206)
                                .cornerRadius(10.0)
                            
                            Image(grid.imagens[2])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 198)
                                .clipped()
                                .cornerRadius(10.0)
                                .opacity(selectedImage == nil || selectedImage == 3 ? 1.0 : 0.3)
                        }//.frame(width: 157, height: 206)
                    }
                    
                    Button(action: { selectedImage = 4 }) {
                        ZStack {
                            Rectangle()
                                .fill(Color.amarelo2)
                                .frame(width: 157, height: 206)
                                .cornerRadius(10.0)
                            
                            Image(grid.imagens[3])
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 198)
                                .clipped()
                                .cornerRadius(10.0)
                                .opacity(selectedImage == nil || selectedImage == 4 ? 1.0 : 0.3)
                        }//.frame(width: 157, height: 206)
                    }
                }
            }
        
        }
    }
}

//#Preview {
//    GridView(
//        titulo: .constant("titulo"),
//        img1: .constant("britney"),
//        img2: .constant("britney"),
//        img3: .constant("britney"),
//        img4: .constant("britney")
//    )
//}
