//
//  HomeView.swift
//  MyoMacApp
//
//  Created by Myo Thu Kha on 8/8/24.
//

import SwiftUI

struct MainView: View {
    
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        NavigationSplitView{
            List{
                Button(action: {
                    viewModel.togglemenu()
                }){
                    Text("Hello world")
                }
            }
        }
    detail:{
        VStack{
            
            Button(action: {}){
                Text("Capture")
            }
            Text("\(viewModel.showMenu)")
            Toggle("Label", isOn: $viewModel.showMenu)
                .toggleStyle(.switch)
        }
    }
    }
}

#Preview {
    MainView()
}
