//
//  ContentView.swift
//  CoverFlow
//
//  Created by Oncu Can on 16.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var items: [CoverFlowItem] = [.red, .blue, .green, .yellow, .primary].compactMap {
        return .init(color: $0)
    }
    var body: some View {
        NavigationStack {
            VStack {
                CoverFlowView(itemWidth: 200, items: items) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(item.color.gradient)
                }
            }
            .navigationTitle("CoverFlow")
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
