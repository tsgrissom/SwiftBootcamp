/*
 Materials for SwiftUI, iOS 15+
 .ultraThinMaterial, .thinMaterial, .thickMaterial, regularMaterial, ultraThickMaterial
 */
import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
            Image("background-image")
                .resizable()
                .ignoresSafeArea()
        )
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
