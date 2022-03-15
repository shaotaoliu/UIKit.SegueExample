import UIKit

class TableEViewController: TableBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Table View"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let row = tableView.indexPathForSelectedRow?.row {
            let detailController = segue.destination as! TableDetailViewController
            detailController.name = names[row]
        }
    }

}
