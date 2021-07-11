//
//  DetailsView.swift
//  Task2
//
//  Created by Oluwasegun Kolawole Ademola on 10/07/2021.
//

import SwiftUI

struct DetailsView: View {
    @Binding var selectedItem: Item
    @Binding var show: Bool
    @State var loadcontent = false
    @State var selectedContent : Color = Color("p1")
    var animation: Namespace.ID
    var body: some View {
        VStack {
            
            HStack (spacing: 25){
                Button(action: {
                    withAnimation(.spring()){
                        show.toggle()
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                Spacer()
                Button(action: {}){
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 24))
                        .foregroundColor(.black)

                }
                Button(action: {}){
                    Image(systemName: "bag")
                        .font(.system(size: 24))
                        .foregroundColor(.black)

                }
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 10)
            VStack (spacing: 5){
                Image(selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(
                        width: 200,
                        height: 180)
                    .matchedGeometryEffect(id: "Image\(selectedItem.id)", in: animation)
                    .padding()
                Text(selectedItem.title)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "title\(selectedItem.title)", in: animation)
                Text("Lighting Colors and Led Light⚡️")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .padding(.top, 4)
                    .foregroundColor(.white)
            
            HStack {
                Text(selectedItem.rating)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .matchedGeometryEffect(id: "rating\(selectedItem.rating)", in: animation)
                    .foregroundColor(.black)
                
        Spacer()
                Button(action:{}) {
                    Image(systemName: "suit.heart")
                        .font(.system(size: 20))
                        .foregroundColor(.red)
                }
                .padding(.bottom, 15)
            }
            .padding(.bottom, 20)
            .padding(.horizontal, 30)
            }
            .frame(width: 358, height: 300)
            .background(Color("\(selectedItem.color)").opacity(0.50))
            .cornerRadius(25)
            VStack {
                VStack (alignment: .leading, spacing: 6){
                    Text("Exclusive Offer")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .lineSpacing(20)

                    Text("Frame + Lens for N23,000(It’s 50% off)")
                        .font(.system(size: 13))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .lineSpacing(20)
                }
                .padding(.vertical, 23)
                .padding(.leading, 19)
                .padding(.trailing, 93)
                .frame(width: 358, height: 92)
                .background(Color(red: 1, green: 0.55, blue: 0.69, opacity: 0.50))
                .cornerRadius(15)
                .frame(width: UIScreen.main.bounds.width - 30, height: 92)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Color")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .font(.title3)
                    .lineSpacing(20)
                    
                    HStack() {
                        ForEach(1...4, id: \.self) {i in
                            ZStack {
                                Color("p\(i)")
                                    .clipShape(Circle())
                                    .frame(width: 35, height: 35, alignment: .leading)
                                    .onTapGesture {
                                        withAnimation(.spring()){
                                            selectedContent = Color("p\(i)")
                                        }
                                    }
                                if selectedContent == Color("p\(i)"){
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.black)
                                }
                            }
                            .padding(.horizontal, 10)
                        }
                    }
                }
                .padding()
                
//                Spacer(minLength: 15)
                
                Button(action: {}){
                    Text("TRY FRAME IN 3D")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .font(.title3)
                        .lineSpacing(20)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .frame(width: 293, height: 69)
                        .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 1)
                        )
                }
                Button(action: {}){
                    Text("ADD TO CART")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .lineSpacing(20)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .frame(width: 293, height: 69)
                        .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.black)
                        )
                }
            }
            .padding([.horizontal, .bottom])
            .frame(height: loadcontent ? nil : 0)
            .opacity(loadcontent ? 1 : 0)
            Spacer(minLength: 0)
        }
        .onAppear{
            withAnimation(Animation.spring().delay(0.45)){
                loadcontent.toggle()
            }
        }
    }
}
