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
        VStack {
            ComposeView()
                .ignoresSafeArea(.keyboard) // Compose has own keyboard handler
            ComposeAppTextField().ignoresSafeArea(.keyboard)
        }
    }
}

struct ComposeAppTextField: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        MainViewControllerKt.ComposeTextField()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

