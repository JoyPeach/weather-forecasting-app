import Foundation
import UIKit

class MainViewController: UIViewController {
    var mainView: MainView! { return (self.view as! MainView) }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        let isLandscape = size.width > size.height
        if isLandscape {
            mainView.centerContentStack.axis = .horizontal
        } else {
            mainView.centerContentStack.axis = .vertical
        }
    }
}
