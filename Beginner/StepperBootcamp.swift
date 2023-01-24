/*
 Increment/decrement a value
 */
import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    @State var heightIncrement: CGFloat = 0
    @State var color: Color = .purple
    
    var body: some View {
        NavigationView {
            VStack {
                Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(color)
                    .frame(width: 100 + widthIncrement, height: 100 + heightIncrement)
                
                Stepper("Width Stepper", onIncrement: {
                    incrementWidth(amount: 10)
                }, onDecrement: {
                    incrementWidth(amount: -10)
                })
                
                Stepper("Height Stepper", onIncrement: {
                    incrementHeight(amount: 10)
                }, onDecrement: {
                    incrementHeight(amount: -10)
                })
                
                ColorPicker("Color Picker", selection: $color)
                
                Spacer()
            }
            .navigationTitle("Stepper Bootcamp")
            .padding(20)
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
    
    func incrementHeight(amount: CGFloat) {
        withAnimation(.easeInOut) {
            heightIncrement += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
