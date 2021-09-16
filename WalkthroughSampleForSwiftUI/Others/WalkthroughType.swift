//
//  WalkthroughType.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/15.
//

import Foundation

enum WalkthroughType: Int, CaseIterable {
    case aboutApp
    case paging
    case appStorage
    case mainContent

    var image: String {
        switch self {
        case .aboutApp:
            return "walkthrough_01"
        case .paging:
            return "walkthrough_02"
        case .appStorage:
            return "walkthrough_03"
        case .mainContent:
            return "walkthrough_04"
        }
    }

    var title: String {
        switch self {
        case .aboutApp:
            return "About this App"
        case .paging:
            return "Paging function"
        case .appStorage:
            return "AppStorage"
        case .mainContent:
            return "Main Content"
        }
    }

    var description: String {
        switch self {
        case .aboutApp:
            return "Thank you very much for install.\nThis app is a sample app of the walkthrough function implemented in SwiftUI."
        case .paging:
            return "The paging function is realized by using PageTabViewStyle of TabView.\nYou can also advance the page with the button at the bottom right."
        case .appStorage:
            return "This app uses AppStorage available from iOS 14 to switch to the main content screen after the walkthrough."
        case .mainContent:
            return "On the main content screen, tap the button to update AppStorage and return to the walkthrough screen again."
        }
    }
}
