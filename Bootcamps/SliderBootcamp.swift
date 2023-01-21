//
//  SliderBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/18/23.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Rating:")
                Text(
                    String(format: "%.1f", sliderValue)
                )
                Slider(value: $sliderValue, in: 0...100, step: 0.5)
                    .accentColor(.purple)
                Spacer()
            }
            .navigationTitle("Slider Bootcamp")
            .padding(20)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
