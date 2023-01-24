/*
 Set time to hold before performing action
 Versus tap action & multitaps
 */
import SwiftUI

struct LongPressGestureDemo: View {
    
    @State var isComplete: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text(isComplete ? "COMPLETED" : "NOT COMPLETED (hold for 3s)")
                    .padding()
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .background(isComplete ? .green : .gray)
                    .cornerRadius(10)
                    // maximumDistance gives users within x points to hold and move their finger before release and still proc perform
                    .onLongPressGesture(minimumDuration: 3.0, maximumDistance: 1, perform: {
                        isComplete.toggle()
                    })
            }
            .navigationTitle("Long Press Gestures")
        }
    }
}

struct LongPressGestureDemo_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureDemo()
    }
}
