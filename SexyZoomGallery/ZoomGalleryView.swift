//
//  ZoomGalleryView.swift
//  SexyZoomGallery
//
//  Created by Nicky Taylor on 9/22/24.
//

import SwiftUI

struct ZoomGalleryView: View {
    
    @Environment(Controller.self) var controller
    @Binding var zoomGalleryIndex: Int
    
    var body: some View {
        NavigationStack {
            TabView(selection: $zoomGalleryIndex) {
                ForEach(controller.items) { item in
                    ZoomGalleryPageView(item: item)
                        .tag(item.index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .background(Color.blue.mix(with: .black, by: 0.5))
            .toolbar {
                ToolbarItem(placement: .destructiveAction) {
                    Button {
                        controller.selectedItem = nil
                    } label: {
                        Text("Done")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                    }

                }
            }
            .toolbarBackgroundVisibility(.visible, for: .navigationBar)
            .toolbarBackground(Color.black, for: .navigationBar)
            
        }
    }
}

#Preview {
    ZoomGalleryView(zoomGalleryIndex: .constant(0))
        .environment(Controller())
}
