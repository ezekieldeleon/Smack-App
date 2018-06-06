//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Ezekiel De Leon on 6/6/18.
//  Copyright © 2018 Ezekiel De Leon. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
