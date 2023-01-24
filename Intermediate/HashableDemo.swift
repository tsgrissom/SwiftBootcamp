//
//  HashableDemo.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/23/23.
//

import SwiftUI

struct MyCustomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

struct HashableDemo: View {
    
    let data: [MyCustomModel] = [
        MyCustomModel(title: "ONE"),
        MyCustomModel(title: "TWO"),
        MyCustomModel(title: "THREE"),
        MyCustomModel(title: "FOUR"),
        MyCustomModel(title: "FIVE")
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                ForEach(data) { item in
                    Text(item.title)
                        .font(.headline)
                }
                
//                ForEach(data, id: \.self) { item in
//                    Text(item)
//                        .font(.headline)
//                }
            }
        }
    }
}

struct HashableDemo_Previews: PreviewProvider {
    static var previews: some View {
        HashableDemo()
    }
}
