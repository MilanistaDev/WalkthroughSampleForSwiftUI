//
//  WalkthroughContentView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/13.
//

import SwiftUI

struct WalkthroughContentView: View {

    let type: WalkthroughType

    var body: some View {
        Text(type.title)
    }
}

struct WalkthroughContentView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughContentView(type: .aboutApp)
    }
}
