//
//  ContentView.swift
//  swift-demos
//
//  Created by Myo Thu Kha on 7/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //for navigating between the pages
        TabView {
            
            WeatherView()
                .tabItem {
                    Label("Weather", systemImage: "cloud.sun.rain")
                }
            
            ZStack{
                

                //background image
                NetworkImage(imageUrl: "https://picsum.photos/300/200?grayscale",placeHolder: Image(""))
                    .scaledToFill()
                
                VStack {
                    //image on the stack
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
            .tabItem {
                Label("Image", systemImage: "photo.stack")
            }
            
            
            
            
            MapView()
                .tabItem {
                    Label("Location", systemImage: "location")
                }
        }
    }
}

#Preview {
    ContentView()
}
