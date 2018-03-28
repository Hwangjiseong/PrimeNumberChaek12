
import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.delegate = self
    }
    
    @IBAction func btReset(_ sender: UIButton) {
        myTextField.text = ""
        resultLabel.text = ""
    }
    
    @IBAction func btPrime(_ sender: UIButton) {
            let number = Int(myTextField.text!)
            var isPrime = true
            if number! == 1{
                isPrime = false
            }
            if number! != 1 && number! != 2 {
                for i in 2 ..< number! {
                    if number! % i == 0{
                        isPrime = false
                    }
                }
            }
            if isPrime{
                resultLabel.text = "Prime Number"
            } else{
                resultLabel.text = "Not Prime Number"
        
            }
    
       

}
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        myTextField.resignFirstResponder()
        return true
    }
}


