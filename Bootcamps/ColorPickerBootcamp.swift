//
//  ColorPickerBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/18/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var bgColor: Color = .green
    
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker(
                "Select a color",
                selection: $bgColor,
                supportsOpacity: true
            )
            .padding()
            .foregroundColor(.white)
            .background(.gray)
            .cornerRadius(10)
            .font(.headline)
            .fontWeight(.bold)
            .padding(100)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
