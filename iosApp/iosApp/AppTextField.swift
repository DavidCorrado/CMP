import SwiftUI
import ComposeApp

struct AppTextField: View {
    @State private var text: String = ""
    var body: some View {
        TextField(
            "Test",
            text: $text
        )
    }
}

func AppTextFieldViewController() -> UIViewController {
    let swiftUIView = AppTextField()
    return UIHostingController(rootView: swiftUIView)
}
