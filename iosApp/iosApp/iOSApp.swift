import SwiftUI
import ComposeApp

@main
struct iOSApp: App {
    init() {
        SwiftUIViewsCompanion().shared = SwiftUIViewsImpl()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
