//
//  MagnificationGestureDemo.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/21/23.
//

import SwiftUI

struct MagnificationGestureDemo: View {
    
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    var body: some View {
        Text("Hello world!")
            .font(.title)
            .padding(40)
            .background(.red)
            .cornerRadius(10)
            .scaleEffect(1 + currentAmount + lastAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        currentAmount = value - 1
                    }
                    .onEnded { value in
                        lastAmount += currentAmount
                        currentAmount = 0
                    }
            )
    }
}

struct MagnificationGestureDemo_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureDemo()
    }
}
