import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            BeginnerView()
                .tabItem {
                    Image(systemName: "figure.strengthtraining.functional")
                    Text("Beginner")
                }
                .tag(1)
            IntermediateView()
                .tabItem {
                    Image(systemName: "figure.stairs")
                    Text("Intermediate")
                }
                .tag(2)
        }
    }
}

struct HomeView: View {
    let githubUrl = URL(string: "https://github.com/tsgrissom/SwiftBootcamp")
    let playlistUrl = URL(string: "https://www.youtube.com/playlist?list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO")
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 5) {
                Text("A collection of views created while following SwiftfulThinking's beginner bootcamp series for learning SwiftUI.")
                Text("Links are provided below for the GitHub repository containing this code, in addition to the aforementioned YouTube playlist.")
                Divider()
                    .padding(.top, 15)
                HStack {
                    Link("GitHub", destination: githubUrl!)
                    Link("Playlist", destination: playlistUrl!)
                }
                .padding(.top, 15)
                Spacer()
            }
            .padding(20)
            .navigationTitle("SwiftBootcamp")
        }
    }
}

struct BeginnerView: View {
    var body: some View {
        NavigationView {
            VStack {
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
                        NavigationLink(destination: ContextMenuBootcamp(), label: {
                            Text("ContextMenuBootcamp.swift")
                        })
                        NavigationLink(destination: ColorPickerBootcamp(), label: {
                            Text("ColorPickerBootcamp.swift")
                        })
                    }
                    
                    Section("D ➡️ N") {
                        NavigationLink(destination: DarkModeBootcamp(), label: {
                            Text("DarkModeBootcamp.swift")
                        })
                        NavigationLink(destination: DatePickerBootcamp(), label: {
                            Text("DatePickerBootcamp.swift")
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
                        NavigationLink(destination: LazyGridBootcamp(), label: {
                            Text("LazyGridBootcamp.swift")
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
                    }
                    
                    Section("M ➡️ S") {
                        NavigationLink(destination: ModelBootcamp(), label: {
                            Text("ModelBootcamp.swift")
                        })
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
                }
                .foregroundColor(.accentColor)
            }
            .navigationTitle("Beginner")
        }
    }
}

struct IntermediateView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section("A ➡️ G") {
                        NavigationLink(destination: DragGestureDemo(), label: {
                            Text("DragGestureDemo.swift")
                        })
                        NavigationLink(destination: DragGestureDemo2(), label: {
                            Text("DragGestureDemo2.swift")
                        })
                        NavigationLink(destination: LongPressGestureDemo(), label: {
                            Text("LongPressGestureDemo.swift")
                        })
                        NavigationLink(destination: GeometryReaderDemo(), label: {
                            Text("GeometryReaderDemo.swift")
                        })
                    }
                    
                    Section("S ➡️ M") {
                        NavigationLink(destination: ScrollViewReaderDemo(), label: {
                            Text("ScrollViewReaderDemo.swift")
                        })
                        NavigationLink(destination: SoundsDemo(), label: {
                            Text("SoundsDemo.swift")
                        })
                        NavigationLink(destination: RotationGestureDemo(), label: {
                            Text("RotationGestureDemo.swift")
                        })
                        NavigationLink(destination: MagnificationGestureDemo(), label: {
                            Text("MagnificationGestureDemo.swift")
                        })
                        NavigationLink(destination: MaskDemo(), label: {
                            Text("MaskDemo.swift")
                        })
                        NavigationLink(destination: MultipleSheetsDemo(), label: {
                            Text("MultipleSheetsDemo.swift")
                        })
                    }
                    
                    Section("H ➡️ Z") {
                        NavigationLink(destination: HapticsDemo(), label: {
                            Text("HapticsDemo.swift")
                        })
                        NavigationLink(destination: HashableDemo(), label: {
                            Text("HashableDemo.swift")
                        })
                    }
                }
                .foregroundColor(.accentColor)
            }
            .navigationTitle("Intermediate")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
