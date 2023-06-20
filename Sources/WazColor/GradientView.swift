//
//  SwiftUIView.swift
//  
//
//  Created by Mark Robberts on 2023/06/16.
//

import SwiftUI

@available(macOS 13.0, *)
@available(iOS 16.0, *)

struct GradientView: View {
    
    let gradient = Gradient()

    @State private var gradients: [LinearGradient] = []
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .fill( Color(.systemGray) )
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                ForEach ( Array(gradient.linears.enumerated() ), id:\.offset) { index, gradient in
                    Rectangle().fill(gradient)
                        .padding(4)
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
