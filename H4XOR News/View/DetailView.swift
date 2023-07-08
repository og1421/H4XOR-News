//
//  SwiftUIView.swift
//  H4XOR News
//
//  Created by Orlando Moraes Martins on 08/07/23.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}


