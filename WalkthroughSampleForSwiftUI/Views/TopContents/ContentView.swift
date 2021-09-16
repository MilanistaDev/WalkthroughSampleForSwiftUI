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
        ZStack {
            VStack {
                Text("Main Contents")
                    .padding()
                Button(action: {
                    buttonDidTap()
                }, label: {
                    Text("Reset Walkthrough Flag")
                })
            }
            VStack {
                Spacer()
                Text("Great images of the walkthrough are from unDraw.\nI love this service.😍\n")
                    .font(.custom("Futura-Medium",
                                  size: 13.0,
                                  relativeTo: .footnote))
                Link(destination: URL(string: "https://undraw.co/illustrations")!) {
                    Text("https://undraw.co/illustrations")
                        .font(.footnote)
                        .underline()
                }
            }
            .padding(.bottom, 32.0)
            .padding(.horizontal, 20.0)
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
