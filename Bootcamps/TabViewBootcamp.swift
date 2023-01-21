import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab).tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(0)
            Text("BROWSE TAB").tabItem {
                Image(systemName: "globe")
                Text("Browse")
            }
            .tag(1)
            Text("PROFILE TAB").tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
            .tag(2)
        }
        .accentColor(.purple)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.purple.edgesIgnoringSafeArea(.horizontal)
            Color.purple.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    
                }) {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                }
            }
        }
    }
}
