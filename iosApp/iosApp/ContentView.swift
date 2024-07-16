import UIKit
import SwiftUI
import ComposeApp

struct ComposeView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        MainViewControllerKt.MainViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        ComposeView()
                .ignoresSafeArea(.keyboard) // Compose has own keyboard handler
    }
}

class TheFactory: Factory {
    func makeController() -> UIViewController {
        MySwiftUIViewController()
    }
}

func MySwiftUIViewController() -> UIViewController {
    let swiftUIView = VStack {
        AppTextField()
    }
    return UIHostingController(rootView: swiftUIView)
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FactoryCompanion().shared = TheFactory()
        return true
    }
}

struct AppTextField: View {
    @State private var text: String = ""
    var body: some View {
        TextField(
            "Test",
            text: $text
        )
    }
}
