//
//  ProductDetailsView.swift
//  E-Commerce-SwiftUI
//
//  Created by Anket Kohak on 21/01/25.
//

import SwiftUI

struct ProductDetailsView: View {
    let product:Product
    var body: some View {
        
        VStack(spacing: 16){
            AsyncImageView(imageURL: product.image)
                .scaledToFit()
                .frame(height: 300)
          
            Text(product.title)
                .font(.headline)
            
            Text(product.description)
                .font(.footnote)
                .foregroundStyle(.secondary)
            
            
            HStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text(product.rating.rate.toString() + " " + "Ratings")
                        .foregroundStyle(.secondary)
                }.font(.callout)
                Spacer()
                circleImage
                Text("4.6k Reviews")
                Spacer()
                circleImage
                Text("4.6k Sold")
            }
            .foregroundStyle(.secondary)
            .font(.callout)
            Spacer()
            HStack{
                VStack(alignment: .leading, spacing: 8){
                    Text("Total Price")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text(product.price.currencyFormat())
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.indigo)
                }.padding(.leading)
                Spacer()
                
                HStack{
                    Image(systemName: "cart.fill.badge.plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                    Text("Buy Now")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width: 100)
                }.foregroundStyle(.white)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .background(RoundedRectangle(cornerRadius: 15)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(stops: [
                                Gradient.Stop(color: .indigo, location: 0.3),
                                Gradient.Stop(color: .indigo, location: 0.1),
                                Gradient.Stop(color: Color(UIColor.darkGray), location: 0.1),
                                Gradient.Stop(color: Color(UIColor.darkGray), location: 0.5)]),
                            startPoint: .leading,
                            endPoint: .trailing
                            )
                            ))
                    .padding(.trailing)
                        
                        
            }.frame(height: 100)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.2))
                .clipShape(.buttonBorder)

        }.padding()
        
      
    }
    var circleImage: some View {
        Image(systemName: "circle.fill")
            .resizable()
            .frame(width: 8, height: 8)
    }
}

#Preview {
    ProductDetailsView(product: Product.dummy)
}
