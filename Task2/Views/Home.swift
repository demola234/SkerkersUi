//
//  Home.swift
//  Task2
//
//  Created by Oluwasegun Kolawole Ademola on 09/07/2021.
//

import SwiftUI

struct Home: View {
    @State var selected = tabs[0]
    @Namespace var animation
    @State var show = true
    @State var selectedItem: Item = items[0]
    var body: some View {
        ZStack {
            VStack  {
                HStack {
                    VStack (alignment: .leading, spacing: 5){
                        Text("Hi Ademola 👋🏾")
                            .font(.system(size: 20, weight: .heavy))
                            .foregroundColor(.black)
                        Text("Welcome Back")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.black.opacity(30))
                    }
                    .padding(.horizontal)
                    Spacer(minLength: 0)
                    Image("UserAvater")
                }
                .padding(.vertical, 20)
                .padding(.horizontal)
                ScrollView {
                    VStack {
                            HStack(spacing: 0) {
                                ForEach(tabs, id: \.self){ tab in
                                    TabButtons(title: tab, selected: $selected, animation: animation)
                                    
                                    if tabs.last != tab{Spacer(minLength: 0)}
                                }
                            }
                            .padding()
                            .padding(.top,3)
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 20), count: 2),spacing: 25){
                            ForEach(items){ item in
                                CardView(item: item, animation: animation).onTapGesture {
                                    withAnimation(.spring()){
                                            selectedItem = item
                                            show.toggle()
                                        }
                                }
                            }
                        }
                        .padding()
                    }
                }
                Spacer(minLength: 0)
            }
            .opacity(show ? 0 : 1)
            
            if show {
                DetailsView(selectedItem: $selectedItem, show: $show, animation: animation)
            }
               
        }.background(Color.white.ignoresSafeArea())
    }
}

// Making an array of the tabs
var tabs = ["Shoes", "Heels", "Glasses", "Perfume", "Athletic"]
