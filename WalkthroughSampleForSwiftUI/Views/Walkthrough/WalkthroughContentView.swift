//
//  WalkthroughContentView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/13.
//

import SwiftUI

struct WalkthroughContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Text("Walkthrough Screen")
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
