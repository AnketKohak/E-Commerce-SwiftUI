//
//  ProductRowView.swift
//  E-Commerce-SwiftUI
//
//  Created by Anket Kohak on 21/01/25.
//

import SwiftUI

struct ProductRowView: View {
    let product:Product
    var body: some View {
        HStack(spacing: 8){
            if let url = URL(string: product.image){
                AsyncImage(url: url) { image in
                    image.resizable().scaledToFit()
                } placeholder: {
                    ProgressView()
                }.frame(width: 100,height: 100)
                
            }
            
            VStack(alignment: .leading , spacing: 8){
                Text(product.title)
                    .font(.headline)
                    .lineLimit(2 )
                HStack{
                    Text(product.category)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Spacer()
                    HStack(){
                        Image(systemName: "star.fill")
                        Text(product.rating.rate.toString())
                           
                    }.foregroundStyle(.yellow)
                    .fontWeight(.medium)
                }
                Text(product.description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
                
                HStack{
                    Text(product.price.currencyFormat())
                        .font(.title3)
                        .foregroundStyle(.indigo)
                    Spacer()
                    Button { } label: {
                        Text("Buy")
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                            .padding(.vertical,8)
                            .background(.indigo)
                            .clipShape(.capsule)
                    }

                    
                }
            }
            
        }.padding()
    }
}

#Preview {
    ProductRowView(product: Product.dummy)
}
