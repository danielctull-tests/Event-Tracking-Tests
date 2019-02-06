
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	let tracker = EventTracker()

	override var next: UIResponder? {
		// App Delegate is the last thing in the chain,
		// so has no next responder by default, so we can just return the event tracker.
		return tracker
	}
}
