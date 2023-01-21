//
//  OnAppearBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/19/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text."
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                myText = "This is the new text!"
            })
            .navigationTitle("On Appear Bootcamp")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
