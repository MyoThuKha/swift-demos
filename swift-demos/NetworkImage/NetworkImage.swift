//
//  NetworkImage.swift
//  swift-demos
//
//  Created by Myo Thu Kha on 7/21/24.
//

import SwiftUI

// this view fetch image download and pass it.
struct NetworkImage: View {
    var imageUrl :String
    
    var viewModel = NetworkImageViewModel()
    
    var body: some View {
        VStack{
            DefaultImageView(image: viewModel.image)
                .onAppear{
                    viewModel.getImage(fromUrl: imageUrl)
                }
        }
    }
}



// this view render default image if image is failed to load.
struct DefaultImageView: View {
    
    var image: Image?
    
    var body: some View {
        //  image?.resizable() ?? Image("rainbow").resizable()
        image?.resizable() ??
        Image(systemName: "rainbow").resizable()
    }
}

#Preview {
    NetworkImage(imageUrl: "https://picsum.photos/200/300?grayscale")
}
