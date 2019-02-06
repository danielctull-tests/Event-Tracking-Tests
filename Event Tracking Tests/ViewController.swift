
import UIKit

class ViewController: UIViewController {

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		let event = Event(name: "View Did Load")
		trackEvent(event)
	}
}
