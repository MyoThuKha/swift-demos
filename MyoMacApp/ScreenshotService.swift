//
//  ScreenshotService.swift
//  MyoMacApp
//
//  Created by Myo Thu Kha on 8/8/24.
//

import Foundation

class ScreenshotService {
    
    static var shared = ScreenshotService();
    
    let proc = Process()
    
    func captureScreenshot(){
        proc.executableURL = URL(filePath: "/usr/sbin/screencapture")
        proc.arguments = ["-wc"]
        do{
            defer{
                proc.waitUntilExit()
            }
            
            try proc.run()
            
        }
        catch{
            print("error")
            
        }
    }
    
    
}
