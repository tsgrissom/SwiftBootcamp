/*
 Sheets transition from one screen -> another
 */
import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button("Button", action: {
                showSheet.toggle()
            })
            .foregroundColor(.green)
            .font(.headline)
            .padding(20)
            .background(Color.white.cornerRadius(10))
            .sheet(isPresented: $showSheet, content: {
                // DO NOT ADD CONDITIONAL LOGIC into sheets & fullscreen covers, pass to another view
                SecondScreen()
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button(
                action: {
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                }
            )
            .foregroundColor(.red)
            .font(.headline)
            .padding(20)
            .background(Color.white.cornerRadius(10))
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
