import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(text.isEmpty ? "Write something!" : text).font(.caption)
            TextField("Placeholder...", text: $text)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(5)
                .submitLabel(.route)
                .onSubmit {
                    print("Something!")
                }
            TextField("Placeholder...", text: $text)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(5)
                .submitLabel(.next)
                .onSubmit {
                    print("Something!")
                }
            TextField("Placeholder...", text: $text)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(5)
                .submitLabel(.search)
                .onSubmit {
                    print("Something!")
                }
            
        }
        .padding()
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
