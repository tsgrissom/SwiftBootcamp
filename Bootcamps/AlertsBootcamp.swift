//
//  AlertsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/15/23.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var bgColor: Color = .yellow
    @State var showAlert: Bool = false
    
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: getAlert)
        }
    }
    
    func getAlert() -> Alert {
        Alert(
            title: Text("This is the title"),
            message: Text("Here we will describe the error."),
            primaryButton: .destructive(Text("DELETE"), action: {
                bgColor = .red
            }),
            secondaryButton: .cancel()
        )
        // Alert(title: Text("There was an error!"))
    }
}

struct AlertsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertsBootcamp()
    }
}
