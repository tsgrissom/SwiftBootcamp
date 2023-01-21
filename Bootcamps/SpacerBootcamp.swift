import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack() {
            // Spacer(minLength: 0) will collapse if necessary
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            // Resize as big as possible within the frame
            
            Rectangle()
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
        }
        .background(.blue)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
