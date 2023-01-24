/*
 View#background - Passes a view which is placed behind the operated on View
 View#overlay - Passes a view which is placed in front of the operated on View
 Alignment -
 */
import SwiftUI

struct BackgroundsBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            RoundedRectangle(cornerRadius: 5)
                .fill(.purple)
                .frame(width: 100, height: 100)
                .frame(width: 150, height: 150)
                .background(.red)
            RoundedRectangle(cornerRadius: 5)
                .fill(.purple)
                .frame(width: 200, height: 200)
                .overlay(alignment: .topLeading, content: {
                    Circle()
                        .fill(.blue)
                        .frame(width: 55, height: 55)
                })
                .overlay(alignment: .bottomTrailing, content: {
                    Rectangle()
                        .fill(.green)
                        .frame(width: 25, height: 25)
                })
            RoundedRectangle(cornerRadius: 15)
                .fill(.orange)
                .frame(width: 300, height: 300)
                .frame(width: 100, height: 100)
                .overlay(.yellow)
        }
    }
}

struct BackgroundsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundsBootcamp()
    }
}
