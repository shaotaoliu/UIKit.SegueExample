import UIKit

class ChildCViewController: UIViewController {
 
    @IBAction func goToD(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ChildDViewController") as! ChildDViewController
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func goBack(_ sender: RoundButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
