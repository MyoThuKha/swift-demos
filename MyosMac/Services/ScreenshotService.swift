//
//  ScreenshotService.swift
//  MyosMac
//
//  Created by Myo Thu Kha on 8/10/24.
//

import Foundation


class ScreenshotService {
    let process = Process()
    
    static let shared = ScreenshotService()
    
    
    func capture(){
        print("capture service start")
        process.executableURL = URL(fileURLWithPath: "/usr/sbin/screencapture")
        process.arguments = ["-cw"]
        
        do{
            defer{
                process.waitUntilExit()
            }
            try process.run()
        }
        catch{
            print("screenshot capture error")
        }
        
    }
    
    
}
