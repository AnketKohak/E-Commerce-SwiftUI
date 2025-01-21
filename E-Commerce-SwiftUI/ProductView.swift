//
//  ProductView.swift
//  E-Commerce-SwiftUI
//
//  Created by Anket Kohak on 21/01/25.
//

import SwiftUI

struct ProductView: View {
    let viewModel = ProductViewModel()
    var body: some View {
        NavigationStack{
            List(viewModel.products){ product in
                NavigationLink {
                    ProductDetailsView(product: product)
                } label: {
                    ProductRowView(product: product)
                }

               
                
            }.listStyle(.plain)
            .navigationTitle("Products")
        }.task {
            await viewModel.fetchProducts()
        }
    }
}

#Preview {
    ProductView()
}
