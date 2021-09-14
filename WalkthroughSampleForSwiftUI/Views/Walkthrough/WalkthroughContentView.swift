//
//  WalkthroughContentView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/13.
//

import SwiftUI

struct WalkthroughContentView: View {
    // Gloomy
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .label
        UIPageControl.appearance().pageIndicatorTintColor = .systemGray.withAlphaComponent(0.5)
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                TabView {
                    ForEach(0..<4) { index in
                        Text("Walkthrough Screen" + index.description)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                FloatingButtonView()
                    .padding(.trailing, 28.0)
                    .padding(.bottom, geometry.safeAreaInsets.bottom + 16.0)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct WalkthroughContentView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughContentView()
    }
}
