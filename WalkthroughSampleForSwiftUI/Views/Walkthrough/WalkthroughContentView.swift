//
//  WalkthroughContentView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/13.
//

import SwiftUI

struct WalkthroughContentView: View {

    let type: WalkthroughType
    let width: CGFloat

    var body: some View {
        VStack(spacing: 20.0) {
            Image(type.image)
                .resizable()
                .scaledToFit()
                .frame(width: width * 2 / 3, height: width * 2 / 3)
            Text(type.title)
                .font(.custom("Futura-Medium",
                              size: 22.0,
                              relativeTo: .title2))
            Text(type.description)
                .font(.custom("Futura-Medium",
                              size: 17.0,
                              relativeTo: .body))
                .foregroundColor(.gray)
                .padding(.bottom, 60.0)
        }
        .padding(.horizontal, 20.0)
    }
}

struct WalkthroughContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(WalkthroughType.allCases, id: \.self) { type in
            WalkthroughContentView(type: type,
                                   width: UIScreen.main.bounds.width)
        }
    }
}
