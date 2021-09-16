//
//  ContentView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/13.
//

import SwiftUI

struct ContentView: View {

    @AppStorage(wrappedValue: false, UserDefaultsKey.isShownWalkthrough) private var isShowedWalkthrough

    var body: some View {
        VStack {
            Text("Main Contents")
                .padding()
            Button(action: {
                buttonDidTap()
            }, label: {
                Text("Reset Walkthrough Flag")
            })
        }
    }

    private func buttonDidTap() {
        // Better to write on ViewModel etc.
        isShowedWalkthrough = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
