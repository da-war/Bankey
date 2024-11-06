import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Initialize the window with screen bounds
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Set the root view controller to our custom ViewController
        let mainViewController = ViewController()
        window?.rootViewController = mainViewController
        
        // Show the window
        window?.makeKeyAndVisible()
        
        // Optional customization: fade-in effect for a nice appearance
        window?.alpha = 0
        UIView.animate(withDuration: 1.5) {
            self.window?.alpha = 1
        }
        
        return true
    }
}
