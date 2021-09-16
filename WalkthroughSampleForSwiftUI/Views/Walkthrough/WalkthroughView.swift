//
//  WalkthroughView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/16.
//

import SwiftUI

struct WalkthroughView: View {

    // Gloomy
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .label
        UIPageControl.appearance().pageIndicatorTintColor = .systemGray.withAlphaComponent(0.5)
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                TabView {
                    ForEach(WalkthroughType.allCases, id: \.self) { type in
                        WalkthroughContentView(type: type)
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

struct WalkthroughView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughView()
    }
}
