import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
        
    // mendaftarkan komponen
    @IBOutlet weak var pickerView1: UIPickerView!
    @IBAction func btnGetPicker(_ sender: Any) {
        let charsRow = pickerView1.selectedRow(inComponent: 0)
        let weaponsRow = pickerView1.selectedRow(inComponent: 1)
        
        let selectedChar = characters[charsRow]
        let selectedWeapon = weapons[weaponsRow]
        
        let result = String(format: "Character is %@ and selected weapon is %@", arguments: [selectedChar, selectedWeapon])
        
        let alert = UIAlertController(title: "Star Wars", message: result, preferredStyle: .alert)
        
        let btnOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(btnOk)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    // deklarasi array saja
    var characters: [String] = Array()
    var weapons: [String] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // data array
        characters.append("Han Solo")
        characters.append("Luke Skywalker")
        characters.append("Princess Leia")
        weapons.append("Lightsaber")
        weapons.append("Pistol")
        weapons.append("Keris")
        
        pickerView1.delegate = self
        pickerView1.dataSource = self
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return String(characters[row])
        } else {
            return String(weapons[row])
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return characters.count
        } else {
            return weapons.count
        }
    }


}
