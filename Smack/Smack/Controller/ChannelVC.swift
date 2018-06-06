//
//  ChannelVC.swift
//  Smack
//
//  Created by Ezekiel De Leon on 6/4/18.
//  Copyright © 2018 Ezekiel De Leon. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Calculates how much view to show for menu.
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
