//
//  TabButtons.swift
//  Task2
//
//  Created by Oluwasegun Kolawole Ademola on 10/07/2021.
//

import SwiftUI

struct TabButtons: View {
    var title: String
    @Binding var selected: String
    var animation: Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selected = title
            }
        }) {
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.medium)
                .foregroundColor(selected == title ? .white : .black)
                .padding(.vertical, 10)
                .padding(.horizontal, selected == title ? 18 : 0)
                .background(
                    ZStack {
                    if(selected == title) {
                        Color("tabs")
                            .clipShape(Capsule())
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
                )
        }
    }
}
