//
//  ShapesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/10/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
//            .fill(.green)
//            .foregroundColor(.pink) Same operation
//            .stroke(.red, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [2]))
//            .trim(from: 0.2, to: 1.0)
            .stroke(.purple, lineWidth: 5)
        
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
