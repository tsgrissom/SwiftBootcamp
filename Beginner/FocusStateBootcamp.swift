/*
 Focus state is required to programmatically enter text field
 */
import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    // Value is equal to whether or not text field is currently clicked
    @FocusState private var fieldInFocus: OnboardingField?
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            HStack {
                Button("Sign up 🚀") {
                    let usernameIsValid = !username.isEmpty
                    let passwordIsValid = !password.isEmpty
                    if usernameIsValid && passwordIsValid {
                        print("Sign up")
                    } else if usernameIsValid {
                        fieldInFocus = .password
                    } else {
                        fieldInFocus = .username
                    }
                }
                .buttonStyle(.bordered)
                
                Button("Log in 🔐") {
                    
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(.top, 8)
        }
        .padding(40)
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
