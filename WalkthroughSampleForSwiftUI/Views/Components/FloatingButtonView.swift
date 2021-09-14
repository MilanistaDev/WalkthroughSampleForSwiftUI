//
//  FloatingButtonView.swift
//  WalkthroughSampleForSwiftUI
//
//  Created by Takuya Aso on 2021/09/14.
//

import SwiftUI

struct FloatingButtonView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {}, label: {
                    HStack(spacing: 6.0) {
                        Text("Next")
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
}

struct FloatingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButtonView()
    }
}
