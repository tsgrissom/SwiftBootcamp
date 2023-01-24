import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(height: 200)
                    .foregroundColor(isSelected ? Color.green : Color.red)
                
                Text("Tap Gesture Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
//                    .onTapGesture {
//                        isSelected.toggle()
//                    }
                    .onTapGesture(count: 2, perform: {
                        isSelected.toggle()
                    })
                
                Button(action: {
                    isSelected.toggle()
                }) {
                    Text("True Button")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(25)
                }
                
                Spacer()
            }
            .padding(40)
            .navigationTitle("Tap Gestures")
        }
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
