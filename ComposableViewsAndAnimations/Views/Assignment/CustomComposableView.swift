//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI


struct CustomComposableView: View {
    
    // MARK: Stored properties

    // For driving animation to reveal rectangle with progress meter fill
        @State private var progressMeterOffset = CGSize.zero

    // MARK: Computed properties
    var body: some View {
        
        VStack {
            ZStack {
                
                // Stationary full rectagle
                Image(systemName: "hand.thumbsup.fill")
                    .frame(alignment: .center)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                
                ZStack {
                    // White full thumbs up Will slide up
                    Image(systemName: "hand.thumbsup.fill")
                        .frame(alignment: .center)
                        .font(.largeTitle)
                        .foregroundColor(Color.primary)
                        .colorInvert()

                    // Empty thumbs up
                    Image(systemName: "hand.thumbsup")
                        .frame(alignment: .center)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }
                .offset(progressMeterOffset)
                .onTapGesture(perform: {
                    withAnimation(Animation.easeIn(duration: 1.0)) {
                        // Offset is moves the opaque rectangle up
                        progressMeterOffset = CGSize(width: 0, height: -1 * (548 - 44))
                    }
                })
            }
        }
        
    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
