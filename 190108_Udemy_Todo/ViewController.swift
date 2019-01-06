import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var array = [String]()
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
       
    }

    @IBAction func registry(_ sender: Any) {
        
        if (UserDefaults.standard.object(forKey: "todo") != nil) {
            array = UserDefaults.standard.object(forKey: "todo") as! [String]
        }
        
        array.append(textField.text!)
        UserDefaults.standard.set(array, forKey: "todo")
        
    }
    
}

