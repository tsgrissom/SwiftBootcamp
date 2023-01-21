//
//  SafeAreaBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/11/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(width: 180, height: 200)
                        .shadow(radius: 30)
                    
                    Text("Hello world!")
                }
                .padding(.top)
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(width: 180, height: 200)
                }
                .padding(.top)
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(width: 180, height: 200)
                }
                .padding(.top)
                Spacer()
                
                HStack {
                    ZStack {
                        Circle()
                            .fill(.blue)
                            .frame(width: 55, height: 55)
                        ZStack {
                            Circle()
                                .fill(.red)
                                .frame(width: 20, height: 20)
                            Text("1")
                                .foregroundColor(.white)
                        }.offset(x: 18, y: -27)
                    }
                    ZStack {
                        Circle()
                            .fill(Color.accentColor)
                            .frame(width: 55, height: 55)
                    }
                }
            }
        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
