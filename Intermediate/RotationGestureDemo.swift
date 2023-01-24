/*
 Two finger rotations of objects
 */
import SwiftUI

struct RotationGestureDemo: View {
    
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        VStack {
            Text("Hello world!")
                .padding(50)
                .background(.purple)
                .foregroundColor(.white)
                .cornerRadius(25)
                .rotationEffect(.zero)
                .gesture(
                    RotationGesture()
                        .onChanged { value in
                            angle = value
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                angle = Angle(degrees: 0)
                            }
                        }
                )
        }
    }
}

struct RotationGestureDemo_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureDemo()
    }
}
