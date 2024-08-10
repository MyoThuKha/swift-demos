//
//  ScreenshotMenuView.swift
//  MyosMac
//
//  Created by Myo Thu Kha on 8/10/24.
//

import SwiftUI

struct ScreenshotMenuView: View {
    
    @EnvironmentObject private var viewModel :ScreenshotViewModel
    
    var body: some View {
        Button(action: {
            viewModel.captureScreenshot()
        }, label: {
            Text("Capture")
        })
    }
}

#Preview {
    ScreenshotMenuView()
}
