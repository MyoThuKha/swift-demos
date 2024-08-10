//
//  MyosMacApp.swift
//  MyosMac
//
//  Created by Myo Thu Kha on 8/10/24.
//

import SwiftUI

@main
struct MyosMacApp: App {
    @StateObject var screenshot = ScreenshotViewModel()
    @State var showMenu = false

    var body: some Scene {
        WindowGroup {
            MainAppView()
                .presentedWindowStyle(.hiddenTitleBar)
                .toolbarBackground(.hidden, for: .windowToolbar)
                .environmentObject(screenshot)
        }
        .windowStyle(.hiddenTitleBar)
        
        MenuBarExtra("Menu", systemImage: "camera.fill", isInserted: $showMenu){
            ScreenshotMenuView()
                .environmentObject(screenshot)
        }
        .onChange(of: screenshot.showMenuValue){
            showMenu.toggle()
        }
    }
}
