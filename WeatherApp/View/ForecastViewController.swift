import Foundation
import UIKit

class ForecastViewController: UIViewController {
    var forecastView: ForecastView! { return (self.view as! ForecastView) }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = ForecastView(frame: UIScreen.main.bounds)
    }
}

