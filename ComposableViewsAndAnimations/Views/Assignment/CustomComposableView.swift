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
    @State private var progressMeterOffset = 0.0

    @State var currentOpacity = 1.0
    
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
                        .opacity(currentOpacity)

                    // Empty thumbs up
                    Image(systemName: "hand.thumbsup")
                        .frame(alignment: .center)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .opacity(currentOpacity)
                }
                .offset(x: 0, y: progressMeterOffset)
                .onTapGesture(perform: {
                    withAnimation(Animation.easeIn(duration: 0.5)) {
                        // Offset is moves the opaque rectangle up
                        progressMeterOffset = -100
                        
                        //Thumb fades out
                        currentOpacity = 0.0
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
