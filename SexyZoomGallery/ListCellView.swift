//
//  ListCellView.swift
//  SexyZoomGallery
//
//  Created by Nicky Taylor on 9/22/24.
//

import SwiftUI

struct ListCellView: View {
    let item: Item
    let zoomAnimationNamespace: Namespace.ID
    
    var body: some View {
        HStack {
            HStack {
                HStack {
                    ZStack {
                        Text(item.emoji)
                            .font(.system(size: 36.0))
                    }
                    .frame(width: 52.0, height: 52.0)
                    .background(RoundedRectangle(cornerRadius: 8.0).foregroundStyle(Color.white))
                    .matchedTransitionSource(id: item.index,
                                             in: zoomAnimationNamespace)
                    
                    HStack {
                        Text(item.name)
                            .font(.system(size: 22.0, weight: .semibold))
                            .foregroundStyle(Color.white)
                        Spacer()
                    }
                }
                .padding(.all, 12.0)
            }
            .background(RoundedRectangle(cornerRadius: 13.0).foregroundStyle(Color.blue.mix(with: .black, by: 0.5)))
            .padding(.horizontal, 12.0)
        }
    }
}

#Preview {
    ScrollView {
        LazyVStack {
            ForEach(createItems()) { item in
                ListCellView(item: item,
                             zoomAnimationNamespace: Namespace().wrappedValue)
            }
        }
    }
}
