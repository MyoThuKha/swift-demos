//
//  ContentView.swift
//  MyoMacApp
//
//  Created by Myo Thu Kha on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView{
            List{
                Text("Screenshots")
                Text("Title 1")
                Text("Title 1")
            }
        }detail: {
            Text("detail view")
        }
    }
}

#Preview {
    ContentView()
}
