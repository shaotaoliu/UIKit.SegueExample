import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonGoToC: RoundButton!
    var passedData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "one2two":
            let two = segue.destination as! SecondViewController
            two.passedData = textField.text ?? ""
            
        default:
            break
        }
    }

    @IBAction func unwindToOne(_ sender: UIStoryboardSegue) {
        textField.text = passedData
    }
    
    @IBAction func gotoA(_ sender: Any) {
        performSegue(withIdentifier: "gotoA", sender: self)
    }
    
    @IBAction func gotoB(_ sender: Any) {
        performSegue(withIdentifier: "gotoB", sender: self)
    }
    
    @IBAction func gotoC(_ sender: Any) {
        let sb = UIStoryboard(name: "ChildC", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "ChildCViewController") as! ChildCViewController
        navigationController?.pushViewController(controller, animated: true)
    }
}

