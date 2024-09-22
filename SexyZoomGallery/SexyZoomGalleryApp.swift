//
//  SexyZoomGalleryApp.swift
//  SexyZoomGallery
//
//  Created by Nicky Taylor on 9/22/24.
//

import SwiftUI

@main
struct SexyZoomGalleryApp: App {
    let controller = Controller()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(controller)
        }
    }
}
