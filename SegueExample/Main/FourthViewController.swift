import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var passedData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = passedData
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let first = segue.destination as! FirstViewController
        first.passedData = textField.text ?? ""
    }

}
