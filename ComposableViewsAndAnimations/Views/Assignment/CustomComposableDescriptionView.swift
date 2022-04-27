//
//  CustomComposableDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CustomComposableDescriptionView: View {
    
    // MARK: Stored properties
    @State private var phrase: String = ""
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Group {
                
                Text("Thumb Up Button")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                Text("""
                    This animation functions as a like button. When the empty blue thumb up is taped it floats up reveling a solid blue thumb up.
                    """)
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: CustomComposableView()) {
                    SimpleListItemView(title: "Thumb Up Animation",
                                       caption: "WH")
                }
            }
            
        }
        .padding()
        .navigationTitle("Thumb Up")
        
    }
}

struct CustomComposableDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomComposableDescriptionView()
        }
    }
}
