//
//  ProductViewModel.swift
//  E-Commerce-SwiftUI
//
//  Created by Anket Kohak on 21/01/25.
//

import Foundation


@Observable class ProductViewModel{
    
    
     var products: [Product] = []
    private let manger = APIManager()
    
    func fetchProducts()async{
        do{
            products = try await manger.request(url: "https://fakestoreapi.com/products")
            print(products)
        }catch{
            print("Fetch Product Error :",error)
        }
    }
}
