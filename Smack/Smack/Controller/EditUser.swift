//
//  EditUser.swift
//  Smack
//
//  Created by Ezekiel De Leon on 7/4/18.
//  Copyright © 2018 Ezekiel De Leon. All rights reserved.
//

import UIKit

class EditUser: UIViewController {
    
    // Outlets
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var editUsernameTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
    
    func setUpView(){
        let closeTap = UITapGestureRecognizer(target: self, action: #selector(EditUser.handleCloseTap(_:)))
        bgView.addGestureRecognizer(closeTap)
        
        editUsernameTxtField.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceHolder])
    }
    
    @objc func handleCloseTap(_ recognizer: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
}
