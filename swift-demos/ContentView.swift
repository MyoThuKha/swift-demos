//
//  ContentView.swift
//  swift-demos
//
//  Created by Myo Thu Kha on 7/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            NetworkImage(imageUrl: "https://picsum.photos/300/200?grayscale",placeHolder: Image(""))
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                
                LazyHStack {
                    NetworkImage(imageUrl: "https://picsum.photos/300/200?grayscale")
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300,height: 200)
                        .clipShape(.rect(cornerRadius: 25))
                        .padding()
                }
                .frame(width: 300,height: 200)
                
                Text("Hello, world!")
                Text("This is Nyi")
                
                Text("Hi, This is message by Myo")
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
