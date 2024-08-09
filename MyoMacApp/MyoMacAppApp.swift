//
//  MyoMacAppApp.swift
//  MyoMacApp
//
//  Created by Myo Thu Kha on 8/5/24.
//

import SwiftUI

@main
struct MyoMacAppApp: App {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some Scene {
        WindowGroup (id: "main") {
            MainView()
            //                .toolbar(.hidden, for: .windowToolbar)
        }
        
        MenuBarExtra ("Shot",systemImage: "camera", isInserted: $viewModel.showMenu){
            MenuView()
        }
    }
}
