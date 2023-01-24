//
//  ViewModelBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/19/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    /*
     New changes to array are published to FruitViewModel
     */
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func moveFruit(fromOffsets: IndexSet, toOffset: Int) {
        fruits.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
    
    func getFruits() {
        let fruit1 = FruitModel(
            name: "Orange",
            count: 1
        )
        let fruit2 = FruitModel(
            name: "Banana",
            count: 2
        )
        let fruit3 = FruitModel(
            name: "Watermelon",
            count: 88
        )
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(contentsOf: [fruit1, fruit2, fruit3])
            self.isLoading = false
        }
    }
}

struct ViewModelBootcamp: View {
    
    
    // @StateObject -> Use this on creation/init
    // @ObservedObject -> Use this for subviews
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            foregroundLayer
        }
    }
    
    private var foregroundLayer: some View {
        List {
            if fruitViewModel.isLoading {
                ProgressView()
            } else {
                ForEach(fruitViewModel.fruits) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundColor(.red)
                        Text(fruit.name)
                            .font(.headline)
                    }
                }
                .onDelete(perform: fruitViewModel.deleteFruit)
                .onMove(perform: fruitViewModel.moveFruit)
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Fruit List")
        .onAppear {
            fruitViewModel.getFruits()
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("GO BACK")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
