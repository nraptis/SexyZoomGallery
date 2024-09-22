//
//  ContentView.swift
//  SexyZoomGallery
//
//  Created by Nicky Taylor on 9/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var zoomAnimationNamespace
    @State var zoomGalleryIndex = 0
    @State var scrollPosition = ScrollPosition(edge: .top)
    @Environment(Controller.self) var controller
    
    var body: some View {
        @Bindable var controller = controller
        return ScrollView {
            LazyVStack(spacing: 6.0) {
                Spacer()
                    .frame(height: 12.0)
                ForEach(controller.items) { item in
                    Button {
                        zoomGalleryIndex = item.index
                        controller.selectedItem = item
                    } label: {
                        ListCellView(item: item,
                                     zoomAnimationNamespace: zoomAnimationNamespace)
                    }
                }
                Spacer()
                    .frame(height: 12.0)
            }
        }
        .scrollPosition($scrollPosition)
        .onChange(of: zoomGalleryIndex) {
            scrollPosition.scrollTo(id: zoomGalleryIndex)
        }
        .sheet(item: $controller.selectedItem) { item in
            ZoomGalleryView(zoomGalleryIndex: $zoomGalleryIndex)
                .navigationTransition(.zoom(sourceID: zoomGalleryIndex,
                                            in: zoomAnimationNamespace))
        }
        
    }
}

#Preview {
    ContentView()
        .environment(Controller())
}
