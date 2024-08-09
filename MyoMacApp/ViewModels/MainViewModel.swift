//
//  MainViewModel.swift
//  MyoMacApp
//
//  Created by Myo Thu Kha on 8/8/24.
//

import Foundation
import Observation

class MainViewModel: ObservableObject {
    var showMenu = false
    
    func togglemenu(){
        showMenu.toggle()
        
    }
    func captureScreenshot(){
        ScreenshotService.shared.captureScreenshot()
    }
}
