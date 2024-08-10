//
//  ScreenshotViewModel.swift
//  MyosMac
//
//  Created by Myo Thu Kha on 8/10/24.
//

import Foundation

class ScreenshotViewModel : ObservableObject{
    
    @Published var showMenuValue = false
    
    func toggleMenu(){
        showMenuValue.toggle()
    }
    
    func captureScreenshot(){
        ScreenshotService.shared.capture()
    }
    
}
