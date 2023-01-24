//
//  ButtonsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/11/23.
//

import SwiftUI
import UIKit

class Haptics {
    static let shared = Haptics()
    
    private init() { }

    func play(_ feedbackStyle: UIImpactFeedbackGenerator.FeedbackStyle) {
        UIImpactFeedbackGenerator(style: feedbackStyle).impactOccurred()
    }
    
    func notify(_ feedbackType: UINotificationFeedbackGenerator.FeedbackType) {
        UINotificationFeedbackGenerator().notificationOccurred(feedbackType)
    }
}

struct ButtonsBootcamp: View {
    
    @State var alertBgColor: Color = .red
    @State var alertFgColor: Color = .white
    @State var alertVisible: Bool = true
    @State var alertText: String = "The default alert text!"
    
    var body: some View {
        VStack {
            if alertVisible {
                ZStack {
                    Image(systemName: "xmark")
                        .offset(x: -100)
                        .onTapGesture {
                            Haptics.shared.play(.medium)
                        }
                    Text(self.alertText)
                }
                .padding()
                .frame(width: 360, height: 70)
                .background(alertBgColor)
                .foregroundColor(alertFgColor)
                .cornerRadius(10)
            }
            
            Spacer()
            
            HStack {
                VStack {
                    Text("Title")
                        .font(.title2)
                    Text("Lorem ipsum stolor")
                }
                .padding(10)
                .frame(alignment: .leading)
            }
            .frame(width: 360, height: 80)
            .background(.white)
            .shadow(radius: 5)
            .padding(.top, 2)
            
            HStack {
                Text("Lorem ipsum stolor")
                    .padding(10)
            }
            .frame(width: 360, height: 80, alignment: .leading)
            .background(.white)
            .shadow(radius: 5)
            .padding(.top, 2)
            
            HStack {
                Text("Lorem ipsum stolor")
                    .padding(10)
            }
            .frame(width: 360, height: 80, alignment: .leading)
            .background(.white)
            .shadow(radius: 5)
            .padding(.top, 2)
            
            Spacer()
            
            HStack {
                Button(
                    action: {
                        
                    },
                    label: {
                        Image(systemName: "gear")
                            .imageScale(.large)
                    }
                )
                .padding(.leading, 30)
                
                Spacer()
                
                Button(
                    action: {
                        
                    },
                    label: {
                        Circle()
                            .frame(width: 55, height: 55)
                            .shadow(radius: 5)
                            .overlay(content: {
                                Image(systemName:"square.and.pencil")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                            })
                    }
                )
                
                Spacer()
                
                Button(
                    action: {
                        
                    },
                    label: {
                        Image(systemName:"person.fill")
                            .imageScale(.large)
                        
                    }
                )
                .padding(.trailing, 30)
            }
        }
        .navigationTitle("Home")
        .padding(.top, 10)
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView() {
            ButtonsBootcamp()
        }
    }
}
