import Foundation
import UIKit

class ForecastViewController: UIViewController {
    
    let tableView = UITableView.init(frame: .zero, style: .grouped)
    var safeArea: UILayoutGuide!
    var data = ["Anya","Yura","Ira","Julia","Cat","Dog","Bitch","English","Father","Mother","Grecha","Belyash","Motya","Iriska","DbIma","Jools","Jackson"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        safeArea = view.layoutMarginsGuide
        tableView.dataSource = self
        setupTableView()
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
      }
}

extension ForecastViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case tableView:
            return data.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}

class TableCellView: UITableViewCell {

}
