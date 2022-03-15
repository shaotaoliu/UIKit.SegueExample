import UIKit

class ChildAViewController: UIViewController {
    
    @IBAction func goback(_ sender: Any) {
        performSegue(withIdentifier: "abackto1", sender: self)
    }

}
