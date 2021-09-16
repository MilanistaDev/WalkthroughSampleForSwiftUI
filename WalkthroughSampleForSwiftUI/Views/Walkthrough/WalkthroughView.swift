//
//  WalkthroughView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/16.
//

import SwiftUI

struct WalkthroughView: View {

    @State private var selection: Int = 0

    // Gloomy
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .label
        UIPageControl.appearance().pageIndicatorTintColor = .systemGray.withAlphaComponent(0.5)
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                TabView(selection: $selection) {
                    ForEach(WalkthroughType.allCases.indices, id: \.self) { index in
                        WalkthroughContentView(type: WalkthroughType(rawValue: index)!,
                                               width: geometry.size.width)
                            .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .animation(.linear(duration: 0.3))
                FloatingButtonView(selection: $selection)
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
