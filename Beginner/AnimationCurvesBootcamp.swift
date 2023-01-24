//
//  AnimationCurvesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/12/23.
//

import SwiftUI

struct AnimationCurvesBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350: 50, height: 100)
                .animation(.easeOut(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing))
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing))
        }
    }
}

struct AnimationCurvesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesBootcamp()
    }
}
