//
//  ComposableTwoView.swift
//  ComposableViewsAndAnimations
//
//  Created by William Robert Harrington on 2022-04-27.
//

import SwiftUI

struct ComposableTwoView: View {
    
    // MARK: Stored properties

    // For driving animation to reveal rectangle with progress meter fill
    @State private var progressMeterOffset = 0.0

    @State var currentOpacity = 1.0
    
    // MARK: Computed properties
    var body: some View {
        
        Text("WH")
        
    }
}

struct ComposableTwoView_Previews: PreviewProvider {
    static var previews: some View {
        ComposableTwoView()
    }
}
