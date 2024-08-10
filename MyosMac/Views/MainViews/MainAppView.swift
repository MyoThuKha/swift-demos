//
//  MainAppView.swift
//  MyosMac
//
//  Created by Myo Thu Kha on 8/10/24.
//

import SwiftUI

struct MainAppView: View {
    @EnvironmentObject var viewModel : ScreenshotViewModel
    
    var body: some View {
        NavigationSplitView {
            
            // navigation bar
            List{
                //                Text("All Tools")
                Button(action: {}, label: {
                    Text("Screenshot")
                })
            }
        }
    detail: {
        VStack {
            ZStack (alignment: .center){
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 400, alignment: .topLeading)
                    .border(.blue)
                    .clipped()
                Text("Screenshot")
                    .font(.system(size: 40,weight: .bold))
                    .foregroundStyle(.white)
            }
            
            
            Form{
                HStack{
                    Text("Add to the menu Bar")
                    Toggle(isOn: $viewModel.showMenuValue)
                    {}
                        .toggleStyle(.switch)
                }

            }
            Spacer()
        }
        .ignoresSafeArea()
    }
    }
}

#Preview {
    MainAppView()
        .environmentObject(ScreenshotViewModel())
}

