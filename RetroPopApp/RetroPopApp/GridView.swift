//
//  GridView.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 20/05/24.
//

import SwiftUI

struct GridView: View {
    
    @Binding var titulo: String
    @Binding var img1: String
    @Binding var img2: String
    @Binding var img3: String
    @Binding var img4: String
    @Binding var selectedImage: Int?
    
    var clicaCerto1: () -> Void = { }
    var clicaCerto2: () -> Void = {}
    
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
                Text(titulo)
                    .font(.custom("Roboto-Italic", size: 20))
                    
                
                HStack {
                    // Botões alternativas
                    Button(action: { selectedImage = 1 }) {
                        ZStack {
                            Rectangle()
                                .fill(Color.amarelo2)
                                .frame(width: 157, height: 206)
                                .cornerRadius(10.0)
                            
                            Image(img1)
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
                            
                            Image(img2)
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
                            
                            Image(img3)
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
                            
                            Image(img4)
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
