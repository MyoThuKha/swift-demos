//
//  WeatherView.swift
//  swift-demos
//
//  Created by Myo Thu Kha on 8/3/24.
//

import SwiftUI

struct WeatherView: View {
    
    var body: some View {
        NavigationStack {
            ZStack{
                LinearGradient(colors: [.blue,.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                
                //
                
                VStack{
                    Image(systemName: "cloud.sun.bolt.fill")
                        .resizable()
                        .symbolRenderingMode(.multicolor)
                        .aspectRatio(contentMode: .fit)
                        .padding(80)
                    
                    
                    Text("Your current temperature is")
                    Text("22°F")
                        .font(.system(size: 60, weight: .heavy))
                        .foregroundStyle(.white)
                    Spacer()
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    WeatherView()
}
