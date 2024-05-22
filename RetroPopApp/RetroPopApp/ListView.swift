//
//  ListView.swift
//  RetroPopApp
//
//  Created by Lívia Trindade on 22/05/24.
//

import SwiftUI

struct ListView: View {
    var grid: TextGrid
    @Binding var selectedText: Int?
    
    var body: some View {
        ZStack {
            Image("blops")
                .offset(y: 252)
            
            Rectangle()
                .frame(width: 345, height: 512)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundColor(.black)
                .offset(x: 12, y: 12)
            
            Rectangle()
                .frame(width: 345, height: 512)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundColor(.rosaPink)
            
            VStack {
                HStack {
                    Spacer()
                    Image("star")
                        .frame(maxHeight: 60)
                    
                    Text(grid.pergunta)
                        .font(.custom("SpecialElite-Regular", size: 19))
                        .bold()
                    Spacer()
                    Spacer()

                }
                
                VStack(spacing: 20) {
                    ForEach(0..<grid.textos.count, id: \.self) { index in
                        Button(action: { selectedText = index + 1 }) {
                            ZStack {
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 293, height: 76)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.yellow, lineWidth: 8)
                                    )
                                    .cornerRadius(10.0)
                                
                                Text(grid.textos[index])
                                    .foregroundColor(.black)
                                    .font(.custom("SpecialElite-Regular", size: 19))
                                    .bold()
                                    .opacity(selectedText == nil || selectedText == index + 1 ? 1.0 : 0.3)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    @State static var selectedText: Int? = nil

    static var previews: some View {
        ListView(grid: TextGrids[0], selectedText: $selectedText)
    }
}
