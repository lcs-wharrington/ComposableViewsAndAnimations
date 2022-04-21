//
//  ExerciseOneView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI
import UIKit

struct ExerciseOneView: View {
    
    // MARK: Stored properties
    
    // Controls whether this view is showing or not
    @Binding var showThisView: Bool
    
    // Controls the size of the circle
    @State private var scaleFactor: CGFloat = 1.0
    
    // Controls the size of the circle
    @State private var offset: CGFloat = -200.0
    
    // Controls the hue of the circle
    @State private var hue: Color = .red
        
    // Whether to apply the animation
    @State private var useAnimation = false

    // MARK: Computed properties

    var body: some View {
        
        NavigationView {
            
            VStack {

                Circle()
                //Inital cirlce size
                    .frame(width: 300, height: 300)
                //Circle colour
                    .foregroundColor(hue)
                //Circle size
                    .scaleEffect(scaleFactor)
                //Circles position
                    .offset(x: 0, y: offset)
                //Circle shrinking animation
                    .animation(.default)
                //Iteractive Circle
                    .onTapGesture {
                        //Bool statment dependent on cirlce value
                        if scaleFactor > 0.2 {
                            // Reduce the size of the circle by a tenth
                            scaleFactor -= 0.1
                            //Animate positon change
                            withAnimation(.default) {
                                //Change position
                                offset += 50
                            }
                        } else {
                            // Make sure the button doesn't entirely disappear
                            scaleFactor = 1
                            // Change the color of the view to a random hue
                            hue = Color(hue: Double.random(in: 1...360) / 360.0,
                                        saturation: 0.8,
                                        brightness: 0.8)
                        }
                    }
            }
            .navigationTitle("Exercise 1")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Done") {
                        hideView()
                    }
                }
            }
        }
    }
    
    // MARK: Functions
    
    // Makes this view go away
    func hideView() {
        showThisView = false
    }
}

struct ExerciseOneView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseOneView(showThisView: .constant(true))
    }
}
