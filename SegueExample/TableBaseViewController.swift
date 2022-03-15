import UIKit

class TableBaseViewController: UITableViewController {

    let names = ["Red", "Green", "Blue", "Purple", "Orange"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        config.text = names[indexPath.row]
        cell.contentConfiguration = config
        return cell
    }

}
