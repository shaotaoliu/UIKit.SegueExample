import UIKit

class TableDetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buttonBack: RoundButton!
    var name = ""
    var popup = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = name
        buttonBack.isHidden = !popup
    }

    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true)
    }
}
