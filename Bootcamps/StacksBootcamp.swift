/*
 Three types of stacks
 VStacks -> Vertical, along y-axis
 HStacks -> Horizontal, along x-axis
 - Both come with spacing by default (spacing: nil to unset)
 ZStacks -> zIndex (back to front, items stacked)
 - Order can be modified w/ zIndex modifier
 - Stack fits to biggest view in absence of its own frame
 - Similarity to View#overlay & View#background
 - Overlay view is always bound to parent view
 - Always above parent view
 */
import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.brown)
                        .frame(width: 180, height: 180)
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 50, height: 50)
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.brown)
                        .frame(width: 180, height: 180)
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 50, height: 50)
                }
            }
            
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
            
            HStack {
                Rectangle()
                    .fill(.purple)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.cyan)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
