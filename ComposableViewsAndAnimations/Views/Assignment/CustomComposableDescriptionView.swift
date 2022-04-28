//
//  CustomComposableDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CustomComposableDescriptionView: View {
    
    // MARK: Stored properties
    @State var selectedHue = 90.0
    
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
                
                Slider(value: $selectedHue,
                       in: 0.0...360.0,
                       label: {
                            Text("Hue")
                },
                       minimumValueLabel: {
                            Text("0")
                },
                       maximumValueLabel: {
                            Text("360")
                })
                
                HStack{
                    
                    Text("Selected Hue \( String(format: "%.0f", selectedHue) ):")
                    
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(
                            Color(hue: selectedHue/360.0, saturation: 1.0, brightness: 1.0)
                        )
                }
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: CustomComposableView(hue: selectedHue)) {
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
