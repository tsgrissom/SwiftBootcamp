import SwiftUI

struct DragGestureDemo: View {
    
    @State var offset: CGSize = .zero
    
    var body: some View {
        VStack {
            VStack {
                Text("\(offset.width)")
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.pink)
                .frame(width: 300, height: 500)
                .offset(offset)
                .scaleEffect(getScaleAmount())
                .rotationEffect(Angle(degrees: getRotationAmount()))
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                offset = value.translation
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                offset = .zero
                            }
                        }

                )
        }
    }
    
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        let current = abs(offset.width)
        let percent = current/max
        return 1.0 - min(percent, 0.5)
    }
    
    func getRotationAmount() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let current = offset.width
        let percent = current/max
        let percentAsDouble = Double(percent)
        let maxAngle: Double = 10
        return percentAsDouble * maxAngle
    }
}

struct DragGestureDemo_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureDemo()
    }
}
