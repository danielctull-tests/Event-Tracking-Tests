
import UIKit

/// Example of what an event could look like.
class Event: NSObject {

	let name: String

	init(name: String) {
		self.name = name
	}
}

extension UIResponder {

	/// Tracks an event up the responder chain.
	///
	/// - Parameter event: The event to be tracked.
	@objc func trackEvent(_ event: Event) {
		print(self)
		next?.trackEvent(event)
	}
}

/// A responder that can be plonked on the chain
/// that tracks events.
final class EventTracker: UIResponder {

	override func trackEvent(_ event: Event) {
		super.trackEvent(event)
		print(self)
		print("TRACKING:", event.name)
	}
}
