import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var passedData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = passedData
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let four = segue.destination as! FourthViewController
        four.passedData = textField.text ?? ""
    }
    
}
