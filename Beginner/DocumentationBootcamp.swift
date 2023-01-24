/*
 Clean up files for other devs to understand structure
 Important Tips:
 Opt+Cmd+< - Fold code within brackets
 Opt+Cmd+> - Unfold code combo
 */
import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.purple.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                    Button("ALERT", action: {
                    showAlert.toggle()
                }))
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert!")
                })
            }
        }
    }
    
    /// This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    // MARK: FUNCTIONS
    

    /// Gets an alert with a specific title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
