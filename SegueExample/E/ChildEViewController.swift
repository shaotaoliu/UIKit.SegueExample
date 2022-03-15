import UIKit

class ChildEViewController: UIViewController {

    @IBAction func goToF(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ChildFViewController") as! ChildFViewController
        present(controller, animated: true)
    }
    
    @IBAction func goToG(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ChildGViewController") as! ChildGViewController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true)
    }
}
