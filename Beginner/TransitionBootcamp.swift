//
//  TransitionBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/12/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.purple)
                        .foregroundColor(.white)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .transition(.move(edge: .bottom))
                        .animation(.easeInOut)
                    Text("Settings").font(.largeTitle)
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
