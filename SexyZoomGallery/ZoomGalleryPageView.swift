//
//  ZoomGalleryPageView.swift
//  SexyZoomGallery
//
//  Created by Nicky Taylor on 9/22/24.
//

import SwiftUI

struct ZoomGalleryPageView: View {
    let item: Item
    var body: some View {
        GeometryReader { geometry in
            
            var boxSize = min(geometry.size.width,
                              geometry.size.height) - 24.0
            boxSize = min(boxSize, 300.0)
            let emojiSize = boxSize / 2.0
            
            return ZStack {
                
                ZStack {
                    Text(item.emoji)
                        .font(.system(size: emojiSize))
                }
                .frame(width: boxSize, height: boxSize)
                .background(RoundedRectangle(cornerRadius: 24.0).foregroundStyle(Color.white))
                
            }
            .frame(width: geometry.size.width,
                   height: geometry.size.height)
        }
        .background(Color.blue.mix(with: .black, by: 0.5))
    }
}

#Preview {
    ZoomGalleryPageView(item: createItems()[0])
}
