//
//  ContentView.swift
//  Shared
//
//  Created by Liu Ziyi on 29/5/23.
//

import SwiftUI

struct MenuView: View {
    
    var menuItems:[MenuItem] = [MenuItem]()
    
    var body: some View {
        
        List(menuItems) { item in
            
            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
            
                Text(item.name)
                    .bold()
                
                Spacer()
                
                Text("$" + item.price)
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

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
