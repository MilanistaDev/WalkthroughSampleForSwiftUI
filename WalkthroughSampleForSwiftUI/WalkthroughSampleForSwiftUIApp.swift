//
//  WalkthroughSampleForSwiftUIApp.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/13.
//

import SwiftUI

@main
struct WalkthroughSampleForSwiftUIApp: App {

    @AppStorage(wrappedValue: false, UserDefaultsKey.isShownWalkthrough) private var isShowedWalkthrough

    var body: some Scene {
        WindowGroup {
            // Show Walkthrough or Go to main contents
            if !isShowedWalkthrough {
                WalkthroughView()
            } else {
                ContentView()
            }
        }
    }
}
