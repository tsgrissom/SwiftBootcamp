/*
 Reads geometry of current view
 Not very performant. Create screen sans GeometryReader first.
 */
import SwiftUI

struct GeometryReaderDemo: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<20) { index in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 20)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: geometry) * 10),
                                axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                    }
                    .frame(width: 300, height: 250)
                    .padding()
                }
            }
        }
        
//        GeometryReader { geometry in
//            HStack(spacing: 0) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: geometry.size.width * 0.66)
//
//                Rectangle()
//                    .fill(Color.blue)
//            }
//            .ignoresSafeArea(edges: .bottom)
//        }
    }
    
    func getPercentage(geo: GeometryProxy) -> Double {
        let max = UIScreen.main.bounds.width / 2
        let current = geo.frame(in: .global).midX
        return Double(1 - (current / max))
    }
}

struct GeometryReaderDemo_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderDemo()
    }
}
