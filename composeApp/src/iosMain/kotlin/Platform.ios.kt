import androidx.compose.foundation.layout.size
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.interop.UIKitViewController
import androidx.compose.ui.unit.dp
import kotlinx.cinterop.ExperimentalForeignApi
import platform.UIKit.UIDevice
import platform.UIKit.UIViewController

class IOSPlatform: Platform {
    override val name: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion
}

actual fun getPlatform(): Platform = IOSPlatform()

@ExperimentalForeignApi
@Composable
actual fun AppTextField() {
    UIKitViewController(
        modifier = Modifier.size(100.dp),
        factory = { SwiftUIViews.shared!!.getAppTextField() },
        update = {}
    )
}

interface SwiftUIViews {
    companion object {
        var shared: SwiftUIViews? = null
    }
    fun getAppTextField(): UIViewController
}