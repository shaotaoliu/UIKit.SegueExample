import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var passedData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = passedData
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let three = segue.destination as! ThirdViewController
        three.passedData = textField.text ?? ""
    }
    
}
