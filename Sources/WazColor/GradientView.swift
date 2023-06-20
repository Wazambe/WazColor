//
//  GradientListView.swift
//  GPT Tutor
//
//  Created by Mark Robberts on 2023/06/20.
//

import SwiftUI

@available(macOS 13.0, *)
@available(iOS 16.0, *)

public struct GradientView: View {
    
    let gradient = Gradient()
    
    private var twoColumnGrid = [ GridItem( .flexible() ), GridItem( .flexible() ) ]
    
   public init() {
    }
    
    public var body: some View {
        
        ScrollView {
            LazyVGrid(columns: twoColumnGrid, alignment: .center, spacing: 12)  {
                ForEach(Array( gradient.linears.enumerated()), id: \.offset) { index, grad in
                    VStack {
                        Rectangle()
                            .fill( grad )
                            .aspectRatio(2.75, contentMode: .fit)
                    }
                }
            }
        }
    }
}


@available(macOS 13.0, *)
@available(iOS 16.0, *)

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
