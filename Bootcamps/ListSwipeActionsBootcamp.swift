/*
 Customize list swipe actions in SwiftUI
 */
import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana"
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                                Button("Archive") {
                                    
                                }
                                .tint(.yellow)
                                
                                Button("Save") {
                                    
                                }
                                .tint(.blue)
                                
                                Button("Junk") {
                                    
                                }
                                .tint(.red)
                            }
                    }
                    //.onDelete(perform: delete)
                }
            }
            .navigationTitle("List Swipe Actions")
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
