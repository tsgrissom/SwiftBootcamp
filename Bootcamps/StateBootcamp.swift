//
//  StateBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/11/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    // Watch the state of this variable, might need to update view
    @State var bgColor: Color = .red;
    @State var count: Int = 0
    @State var title: String = "My Title"
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(title)
                Text("Count: \(count)")
                
                
                HStack(spacing: 20) {
                    Button("BUTTON 1") {
                        bgColor = .purple
                        title = "BUTTON 1 was pressed"
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        bgColor = .blue
                        title = "BUTTON 2 was pressed"
                        count += 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
