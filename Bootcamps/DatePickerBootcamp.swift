//
//  DatePickerBootcamp.swift
//  SwiftBootcamp
//
//  Created by Tyler Grissom on 1/18/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        NavigationView {
            VStack {
                // CompactDatePickerStyle()
                // GraphicalDatePickerStyle()
                // WheelDatePickerStyle()
                // displayedComponents: [.date, .hourAndMinute]
                
                Text("Selected date is: ")
                Text(dateFormatter.string(from: selectedDate))
                    .font(.title)
                
                DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate)
                    .accentColor(Color.red)
                    .datePickerStyle(CompactDatePickerStyle())
                
                Spacer()
            }
            .padding(20)
            .navigationTitle("Date Picker Bootcamp")
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
