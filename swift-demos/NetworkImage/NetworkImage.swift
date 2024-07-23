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
    var placeHolder : Image?
    
    var viewModel = NetworkImageViewModel()
    
    var body: some View {
        VStack{
            DefaultImageView(image: viewModel.image,placeholder: placeHolder)
                .onAppear{
                    viewModel.getImage(fromUrl: imageUrl)
                }
        }
    }
}



// this view render default image if image is failed to load.
struct DefaultImageView: View {
    
    var image: Image?
    var placeholder: Image?
    
    var body: some View {
        //  image?.resizable() ?? Image("rainbow").resizable()
        
        if let image = image?.resizable() {
            image
        }else{
            //if the image is still in loading or unavailable, rainbow icon will be displayed
            placeholder ?? Image(systemName: "rainbow").resizable()
        }
        
    }
}

#Preview {
    NetworkImage(imageUrl: "https://picsum.photos/200/300?grayscale")
}
