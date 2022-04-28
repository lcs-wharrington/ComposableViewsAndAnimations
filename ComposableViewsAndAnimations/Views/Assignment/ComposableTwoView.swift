//
//  ComposableTwoView.swift
//  ComposableViewsAndAnimations
//
//  Created by William Robert Harrington on 2022-04-27.
//

import SwiftUI

struct ComposableTwoView: View {
    
    // MARK: Stored properties
    @State var currentOpacity = 1.0
    
    // Contorl rotation of the star
    @State var repeatRotation = 0.0
    
    // Timer
    let timer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    
    // MARK: Computed properties
    var body: some View {
        
        Image(systemName: "repeat")
            .resizable()
            .frame(width: 80, height: 80, alignment: .center)
            .foregroundColor(.green)
            .rotation3DEffect(Angle.degrees(repeatRotation), axis: (x: 0, y: 0, z: 1))
            .opacity(currentOpacity)
            .onTapGesture {
                withAnimation(
                    Animation
                        .easeInOut(duration: 0.5)
        ) {
            // Spin the repeat
            repeatRotation = 180
            
            //Repeat fades out
            currentOpacity = 0.0
        }
    }
        Text("An Exclusive Srtify Premium Feature")
    }
}

struct ComposableTwoView_Previews: PreviewProvider {
    static var previews: some View {
        ComposableTwoView()
    }
}
