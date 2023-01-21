/*
 Mini database in iPhone, for small pieces of data
 Signed-in, last sign in, etc.
 */
import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUsername ?? "Add name here")
            
            if let name = currentUsername {
                Text(name)
            }
            
            Button("Save") {
                let name = "Nick"
                currentUsername = name
                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        .onAppear {
            currentUsername = UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
