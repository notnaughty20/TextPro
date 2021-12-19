//
//  ViewController.swift
//  TextProject
//
//  Created by Рафаил Фаталиев on 19.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var saveButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        textField.returnKeyType = .done
        textField.autocapitalizationType = .words
        textField.autocorrectionType = .no
        textField.becomeFirstResponder()
        textField.delegate = self
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 20, height: 50))
        if let font = UIFont(name: "Helvetica", size: 13) {
            
        }
                    
        
        //Items
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                            target: self,
                                            action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didtapDone))
        toolBar.items = [flexibleSpace, doneButton]
        toolBar.sizeToFit()
        textField.inputAccessoryView = toolBar
    }
    
   
    

    
    @IBAction func buttonTapped () {
        textField.resignFirstResponder()
    }
    
    @objc private func didtapDone() {
        textField.resignFirstResponder()
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if let text = textField.text {
            print("\(text)")
        }
        
        return true
    }
}




