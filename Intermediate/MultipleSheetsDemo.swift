//
//  MultipleSheetsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/23/23.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

// 1 - use a binding
// 2 - use multiple .sheets
// 3 - use $item

struct MultipleSheetsDemo: View {
    
    @State var selectedModel: RandomModel = RandomModel(title: "Starting title")
    @State var showSheet: Bool = false
    @State var showSheet2: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Button 1") {
                selectedModel = RandomModel(title: "One")
                showSheet.toggle()
            }
            
            Button("Button 2") {
                selectedModel = RandomModel(title: "Two")
                showSheet2.toggle()
            }
            .sheet(isPresented: $showSheet2) {
                NextScreen(selectedModel: RandomModel(title: "TWO"))
            }
        }
        .sheet(isPresented: $showSheet) {
            NextScreen(selectedModel: selectedModel)
        }
    }
}

struct NextScreen: View {
    
    let selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

struct MultipleSheetsDemo_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsDemo()
    }
}
