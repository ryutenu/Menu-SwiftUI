//
//  MenuView.swift
//  Menu-SwiftUI
//
//  Created by Alan Liu on 2023/04/01.
//

import SwiftUI

struct MenuView: View {
    
    var menus: [MenuData] = [
        MenuData(name: "Onigiri", price: "1.99", imageName: "onigiri"),
        MenuData(name: "Meguro Sushi", price: "5.99", imageName: "meguro-sushi"),
        MenuData(name: "Tako Sushi", price: "4.99", imageName: "tako-sushi"),
        MenuData(name: "Avocado Maki", price: "2.99", imageName: "avocado-maki"),
        MenuData(name: "Tobiko Spicy Maki", price: "4.99", imageName: "tobiko-spicy-maki"),
        MenuData(name: "Salmon Sushi", price: "4.99", imageName: "salmon-sushi"),
        MenuData(name: "Hamachi Sushi", price: "6.99", imageName: "hamachi-sushi"),
        MenuData(name: "Kani Sushi", price: "3.99", imageName: "kani-sushi"),
        MenuData(name: "Tamago Sushi", price: "3.99", imageName: "tamago-sushi"),
        MenuData(name: "California Roll", price: "3.99", imageName: "california-roll"),
        MenuData(name: "Shrimp Sushi", price: "3.99", imageName: "shrimp-sushi"),
        MenuData(name: "Ikura Sushi", price: "5.99", imageName: "ikura-sushi")
    ]
    
    var body: some View {
        List(menus) { data in
            HStack {
                Image(data.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(data.name)
                    .bold()
                
                Spacer()
                
                Text("$" + data.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
            )
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
