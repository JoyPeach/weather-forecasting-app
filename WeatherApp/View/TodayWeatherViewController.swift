import Foundation
import UIKit

class TodayWeatherViewController: UIViewController {
    var todayWeatherView: TodayWeatherView! { return (self.view as! TodayWeatherView) }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = TodayWeatherView(frame: UIScreen.main.bounds)
    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewWillTransition(to: size, with: coordinator)
//        let isLandscape = size.width > size.height
//        if isLandscape {
//            todayWeatherView.centerContentStack.axis = .horizontal
//        } else {
//            todayWeatherView.centerContentStack.axis = .vertical
//        }
//    }
}
