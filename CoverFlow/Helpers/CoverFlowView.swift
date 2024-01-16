//
//  CoverFlowView.swift
//  CoverFlow
//
//  Created by Oncu Can on 16.01.2024.
//

import SwiftUI

// Custom View
struct CoverFlowView<Content: View, Item: RandomAccessCollection>: View where Item.Element: Identifiable {
    var itemWidth: CGFloat
    var items: Item
    var content: (Item.Element) -> Content
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 0) {
                ForEach(items) { item in
                    content(item)
                        .frame(width: itemWidth)
                }
            }
        }
    }
}

// Cover Flow Item Model

struct CoverFlowItem: Identifiable {
    let id: UUID = .init()
    var color: Color
}

#Preview {
    ContentView()
}
