/*
 Important Parts
 Every frame has an alignment, def .center, also .leading, .trailing 
 .infinity mixin, with #frame(maxWidth, maxHeight)
 Calls like #background after frame operate on the frame, not the thing within the frame
 Frames are chainable
 */
import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello world!")
            .background(.red)
            .frame(height: 100)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity)
            .background(.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
