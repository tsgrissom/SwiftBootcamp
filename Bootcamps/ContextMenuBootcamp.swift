/*
 Click and hold on object, context menu pops up
 Another way to show buttons to user
 */
import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var bgColor: Color = .red
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(bgColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                bgColor = .yellow
            }) {
                Label("Share post", systemImage: "flame.fill")
            }
            
            Button(action: {
                bgColor = .red
            }) {
                Label("Report post", systemImage: "flag.fill")
            }
            
            Button(action: {
                bgColor = .green
            }) {
                Label("Like post", systemImage: "heart.fill")
            }
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
