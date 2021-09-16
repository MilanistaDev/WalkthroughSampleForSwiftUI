//
//  FloatingButtonView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/14.
//

import SwiftUI

struct FloatingButtonView: View {

    @AppStorage(wrappedValue: false, UserDefaultsKey.isShownWalkthrough) private var isShowedWalkthrough
    @Binding var selection: Int

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    buttonDidTap()
                }, label: {
                    HStack(spacing: 6.0) {
                        Text(selection == WalkthroughType.allCases.count - 1 ? "Start": "Next")
                            .font(.custom("Futura-Medium", size: 20.0, relativeTo: .title3))
                            .foregroundColor(.primary)
                        Image(systemName: "arrowtriangle.forward.fill")
                            .imageScale(.small)
                            .offset(y: 2.0)
                            .foregroundColor(.primary)
                    }
                })
                .frame(height: 44.0)
            }
        }
    }

    private func buttonDidTap() {
        if selection == WalkthroughType.allCases.count - 1 {
            isShowedWalkthrough = true
        } else {
            selection += 1
        }
    }
}

struct FloatingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButtonView(selection: .constant(0))
    }
}
