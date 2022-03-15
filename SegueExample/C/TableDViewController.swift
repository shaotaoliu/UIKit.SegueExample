import UIKit

class TableDViewController: TableBaseViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "TableDetailViewController") as! TableDetailViewController
        controller.name = names[indexPath.row]
        controller.popup = true
        present(controller, animated: true)
    }

}
