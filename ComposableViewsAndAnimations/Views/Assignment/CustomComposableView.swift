//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI


struct CustomComposableView: View {
    
    // MARK: Stored properties
    
    let hue: Double

    // For driving animation to reveal rectangle with progress meter fill
    @State var progressMeterOffset = 0.0

    @State var currentOpacity = 1.0
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            ZStack {
                
                // Stationary full rectagle
                Image(systemName: "hand.thumbsup.fill")
                    .frame(alignment: .center)
                    .font(.largeTitle)
                    .foregroundColor(
                        Color(hue: hue/360.0, saturation: 1.0, brightness: 1.0)
                    )
                
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
                        .foregroundColor(
                            Color(hue: hue/360.0, saturation: 1.0, brightness: 1.0)
                        )
                        .opacity(currentOpacity)
                }
                .offset(x: 0, y: progressMeterOffset)
                .onTapGesture(perform: {
                    withAnimation(
                        Animation
                            .easeIn(duration: 1.0)
                    ) {
                        // Offset is moves the opaque thumb up
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
        CustomComposableView(hue: 180.0)
    }
}
