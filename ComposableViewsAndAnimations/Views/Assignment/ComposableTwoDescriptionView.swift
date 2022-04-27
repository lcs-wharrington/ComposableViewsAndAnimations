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
                
                Text("Custom 2")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                Text("""
                    [Description...]
                    """)
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: ComposableTwoView()) {
                    SimpleListItemView(title: "[Name...] Animation",
                                       caption: "WH")
                }
            }
            
        }
        .padding()
        .navigationTitle("Composable Two View")
        
    }
}

struct ComposableTwoDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ComposableTwoDescriptionView()
        }
    }
}
