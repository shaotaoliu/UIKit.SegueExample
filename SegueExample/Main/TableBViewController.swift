import UIKit

class TableBViewController: TableBaseViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "gotoDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let row = tableView.indexPathForSelectedRow?.row {
            let detailController = segue.destination as! TableDetailViewController
            detailController.name = names[row]
        }
    }

}
