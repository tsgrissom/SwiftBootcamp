//
//  EnvironmentBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/11/23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}


struct EnvironmentBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                        Text(item)
                    })
                }
            }
            .navigationTitle("iOS Devices")
        }
    }
}

struct DetailView: View {
    let selectedItem: String
    
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: FinalView(), label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            })
        }
    }
}

struct FinalView: View {
    var body: some View {
        ZStack {
            //background
            Color.blue.ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20) {
                    Text("Item1")
                    Text("Item2")
                    Text("Item3")
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentBootcamp()
    }
}
