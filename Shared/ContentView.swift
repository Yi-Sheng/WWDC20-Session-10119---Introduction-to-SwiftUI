//
//  ContentView.swift
//  Shared
//
//  Created by Yi-Sheng Hsu on 2020/6/27.
//

import SwiftUI

struct ContentView: View {
    
    var sandwiches = [Sandwich]()
    
    var body: some View {
        
        NavigationView {
            
            List(sandwiches) { sandwich in
                
                NavigationLink(
                    destination: Text(sandwich.name)) {
                    
                    Image(sandwich.thumbnailName)
                        .frame(width: 50, height: 50)
                        .cornerRadius(8)
                        
                    VStack(alignment: .leading) {
                        Text(sandwich.name)
                        Text("\(sandwich.ingredientCount) ingredients")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Sandwiches")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}
