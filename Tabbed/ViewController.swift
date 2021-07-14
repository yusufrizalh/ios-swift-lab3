import UIKit

class ViewController: UIViewController {
    // mendaftarkan komponen
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBAction func btnGetDate(_ sender: Any) {
        
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .short
        
        let strDate = dateFormatter.string(from: myDatePicker.date)
        let txtDisplay = String(format: "Selected date is %@", strDate)
        
        let alert = UIAlertController(title: "Selected Date", message: txtDisplay, preferredStyle: .alert)
        
        let btnOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(btnOk)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

