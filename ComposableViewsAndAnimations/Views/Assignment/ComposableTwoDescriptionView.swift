//
//  ComposableTwoDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by William Robert Harrington on 2022-04-27.
//

import SwiftUI

struct ComposableTwoDescriptionView: View {
    
    // MARK: Stored properties
    @State private var phrase: String = ""
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Group {
                
                Text("Repeat Button")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                Text("""
                    The repeat symbol that when taped on rotates and the fades away. this could be used as a replay button, re-load and more.
                    """)
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: ComposableTwoView()) {
                    SimpleListItemView(title: "Repeat Animation",
                                       caption: "WH")
                }
            }
            
        }
        .padding()
        .navigationTitle("Repeat")
        
    }
}

struct ComposableTwoDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ComposableTwoDescriptionView()
        }
    }
}
