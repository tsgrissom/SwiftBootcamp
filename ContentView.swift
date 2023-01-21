import SwiftUI

struct ContentView: View {
    
    let githubUrl = URL(string: "https://github.com/tsgrissom/SwiftBootcamp")
    let swiftPlaylistUrl = URL(string: "https://www.youtube.com/playlist?list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO")
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                foregroundLayer
            }
            .navigationTitle("SwiftBootcamp")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    private var foregroundLayer: some View {
        VStack {
            VStack(alignment: .leading, spacing: 15) {
                Text("A collection of demo views created through the course of following Nick Sarno's SwiftUI beginner series")
                HStack {
                    Link("GitHub", destination: githubUrl!)
                    Link("Playlist", destination: swiftPlaylistUrl!)
                }
            }.padding(10)
            List {
                Section("A ➡️ C") {
                    NavigationLink(destination: ActionSheetsBootcamp(), label: {
                        Text("ActionSheetsBootcamp.swift")
                    })
                    NavigationLink(destination: AnimationsBootcamp(), label: {
                        Text("AnimationsBootcamp.swift")
                    })
                    NavigationLink(destination: AlertsBootcamp(), label: {
                        Text("AlertsBootcamp.swift")
                    })
                    NavigationLink(destination: AppStorageBootcamp(), label: {
                        Text("AppStorageBootcamp.swift")
                    })
                    NavigationLink(destination: BackgroundMaterialsBootcamp(), label: {
                        Text("BackgroundMaterialsBootcamp.swift")
                    })
                    NavigationLink(destination: BadgesBootcamp(), label: {
                        Text("BadgesBootcamp.swift")
                    })
                    NavigationLink(destination: ContextMenuBootcamp(), label: {
                        Text("ContextMenuBootcamp.swift")
                    })
                    NavigationLink(destination: ColorPickerBootcamp(), label: {
                        Text("ColorPickerBootcamp.swift")
                    })
                }
                
                Section("D ➡️ M") {
                    NavigationLink(destination: DarkModeBootcamp(), label: {
                        Text("DarkModeBootcamp.swift")
                    })
                    NavigationLink(destination: DatePickerBootcamp(), label: {
                        Text("DatePickerBootcamp.swift")
                    })
                    NavigationLink(destination: DocumentationBootcamp(), label: {
                        Text("DocumentationBootcamp.swift")
                    })
                    NavigationLink(destination: EnvironmentBootcamp(), label: {
                        Text("EnvironmentBootcamp.swift")
                    })
                    NavigationLink(destination: FrameBootcamp(), label: {
                        Text("FrameBootcamp.swift")
                    })
                    NavigationLink(destination: FocusStateBootcamp(), label: {
                        Text("FocusStateBootcamp.swift")
                    })
                    NavigationLink(destination: ListBootcamp(), label: {
                        Text("ListBootcamp.swift")
                    })
                    NavigationLink(destination: ListSwipeActionsBootcamp(), label: {
                        Text("ListSwipeActionsBootcamp.swift")
                    })
                    NavigationLink(destination: NavigationViewBootcamp(), label: {
                        Text("NavigationViewBootcamp.swift")
                    })
                    NavigationLink(destination: ModelBootcamp(), label: {
                        Text("ModelBootcamp.swift")
                    })
                }
                
                Section("S") {
                    NavigationLink(destination: SafeAreaBootcamp(), label: {
                        Text("SafeAreaBootcamp.swift")
                    })
                    NavigationLink(destination: SliderBootcamp(), label: {
                        Text("SliderBootcamp.swift")
                    })
                    NavigationLink(destination: StateBootcamp(), label: {
                        Text("StateBootcamp.swift")
                    })
                    NavigationLink(destination: StacksBootcamp(), label: {
                        Text("StacksBootcamp.swift")
                    })
                    NavigationLink(destination: StepperBootcamp(), label: {
                        Text("StepperBootcamp.swift")
                    })
                    NavigationLink(destination: SubmitTextFieldBootcamp(), label: {
                        Text("SubmitTextFieldBootcamp.swift")
                    })
                    NavigationLink(destination: SpacerBootcamp(), label: {
                        Text("SpacerBootcamp.swift")
                    })
                    NavigationLink(destination: ShapesBootcamp(), label: {
                        Text("ShapesBootcamp.swift")
                    })
                    NavigationLink(destination: SheetsBootcamp(), label: {
                        Text("SheetsBootcamp.swift")
                    })
                }
                
                Section("T ➡️ P") {
                    NavigationLink(destination: TabViewBootcamp(), label: {
                        Text("TabViewBootcamp.swift")
                    })
                    NavigationLink(destination: TapGestureBootcamp(), label: {
                        Text("TapGestureBootcamp.swift")
                    })
                    NavigationLink(destination: TransitionBootcamp(), label: {
                        Text("TransitionBootcamp.swift")
                    })
                    NavigationLink(destination: TextFieldBootcamp(), label: {
                        Text("TextFieldBootcamp.swift")
                    })
                    NavigationLink(destination: TextSelectionBootcamp(), label: {
                        Text("TextSelectionBootcamp.swift")
                    })
                    NavigationLink(destination: ToggleBootcamp(), label: {
                        Text("ToggleBootcamp.swift")
                    })
                    NavigationLink(destination: OnAppearBootcamp(), label: {
                        Text("OnAppearBootcamp.swift")
                    })
                    NavigationLink(destination: PopoverBootcamp(), label: {
                        Text("PopoverBootcamp.swift")
                    })
                    NavigationLink(destination: PickerBootcamp(), label: {
                        Text("PickerBootcamp.swift")
                    })
                }
                
                Section("V ➡️ Z") {
                    NavigationLink(destination: ViewModelBootcamp(), label: {
                        Text("ViewModelBootcamp.swift")
                    })
                }
            }.foregroundColor(.accentColor)
        }
    }
}
