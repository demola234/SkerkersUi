//
//  CardView.swift
//  Task2
//
//  Created by Oluwasegun Kolawole Ademola on 10/07/2021.
//

import SwiftUI

struct CardView: View {
    var item: Item
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 0)
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical,5)
                    .padding(.horizontal,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
            }
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "Image\(item.id)", in: animation)
                .padding(.top,10)
                .padding()
            Text(item.title)
                .fontWeight(.bold)
                .matchedGeometryEffect(id: "title\(item.title)", in: animation)
                .foregroundColor(.black)
            
            HStack {
                Button(action:{}) {
                    Image(systemName: "suit.heart")
                        .font(.title2)
                        .foregroundColor(.red)
                }
                Spacer(minLength: 0)
                Text(item.rating)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
            }
            .padding(.top, 6)
            .padding(.horizontal, 10)
        }
        .frame(width: 180, height: 200)
        .padding(.bottom)
        .background(Color("\(item.color)").opacity(0.50))
        .cornerRadius(20)
    }
}
