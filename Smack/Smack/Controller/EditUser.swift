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
        guard let username = editUsernameTxtField.text, editUsernameTxtField.text != "" else { return }
        print(username)
        AuthService.instance.updateUsername(newUsername: username) { (success) in
            if success {
                AuthService.instance.findUserByEmail { (success) in
                    NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                    self.dismiss(animated: true, completion: nil)
                }
            }
        }
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
