//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Italo Stuardo on 19/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/7/74/Earth_poster_large.jpg")!) { image in
                    image
                        .resizable()
                        .frame(width: 300, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView()
                }
                List(superHeroArray) { superhero in
                    Text(superhero.name)
                        .font(.title3)
                        .foregroundColor(.purple)
                }.navigationTitle(Text("Superhero Book"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
