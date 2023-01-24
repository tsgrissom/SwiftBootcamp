import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isOnline: Bool = false
    @State var isDarkMode: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Status:")
                    Text(isOnline ? "Online" : "Offline")
                }
                
                Toggle(
                    isOn: $isOnline,
                    label: {
                        Text("Change status")
                    }
                )
                .toggleStyle(SwitchToggleStyle(tint: .purple))
                
                Toggle(
                    isOn: $isDarkMode,
                    label: {
                        Text("Toggle dark mode")
                    }
                )
                .toggleStyle(SwitchToggleStyle(tint: .gray))
                
                Spacer()
            }
            .padding(14)
            .navigationTitle("Toggle Bootcamp")
        }
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
