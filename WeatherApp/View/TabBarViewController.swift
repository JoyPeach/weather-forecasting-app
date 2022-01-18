import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
        
        WeatherAPI.shared.fetchWeatherForecast()
    }
    
    func createNavController(
        for rootViewController: UIViewController,
        title: String,
        image: UIImage
    ) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: TodayWeatherViewController(), title: NSLocalizedString("Today", comment: ""), image: UIImage(named: "today")!),
            createNavController(for: ForecastViewController(), title: NSLocalizedString("Forecast", comment: ""), image: UIImage(named: "forecast")!)
        ]
    }

}
