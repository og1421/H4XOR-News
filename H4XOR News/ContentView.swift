//
//  ContentView.swift
//  H4XOR News
//
//  Created by Orlando Moraes Martins on 07/07/23.
//

import SwiftUI

struct ContentView: View {
    let posts = [
        PostData(id: "1", title: "Hello World"),
        PostData(id: "2", title: "Olá Mundo"),
        PostData(id: "3", title: "Orlando Gabriel")
    ]
    
    var body: some View {
        NavigationView {
            List (posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
