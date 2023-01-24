/*
 Push a notification when device physically arrives at a location
 */
import SwiftUI
import UserNotifications
import CoreLocation

class NotificationManager {
    static let instance = NotificationManager()
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        UNUserNotificationCenter.current().requestAuthorization(options: options) { (success, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else {
                print("Success")
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is my first notification!"
        content.subtitle = "This was soooo easy!"
        content.sound = .default
        content.badge = 1
        
        /*
         Three types of triggers to add
         1. time
         ex: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
         2. calendar
         ex: var dateComponents = DateComponents()
             dateComponents.hour = 20
             dateComponents.minute = 26
             let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
         3. location
         */
        // Repeats need a time interval > a minute
        let coordinates = CLLocationCoordinate2D(
            latitude: 41.8781, longitude: 87.6298
        )
        let region = CLCircularRegion(
            center: coordinates,
            radius: 100,
            identifier: UUID().uuidString
        )
        
        region.notifyOnEntry = true
        region.notifyOnExit = false
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: UNLocationNotificationTrigger(region: region, repeats: false)
        )
         
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotifications() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}

struct LocalNotificationsDemo: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Request Permission") {
                NotificationManager.instance.requestAuthorization()
            }
            Button("Schedule Notification") {
                NotificationManager.instance.scheduleNotification()
            }
        }
        .onAppear {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct LocalNotificationsDemo_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationsDemo()
    }
}
