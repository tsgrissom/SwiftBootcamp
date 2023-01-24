/*
 Used w/ ForEach & ScrollViews
 LazyVGrid
 LazyHGrid
 Lots of data which extends off screen won't load until coming onto screen
 Grids are automatically lazy
 */
import SwiftUI

struct LazyGridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
    }
}

struct LazyGridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBootcamp()
    }
}
