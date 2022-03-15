import UIKit

class TableCViewController: TableBaseViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "TableDetailViewController") as! TableDetailViewController
        controller.name = names[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }

}
