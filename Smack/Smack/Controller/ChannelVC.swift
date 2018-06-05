//
//  ChannelVC.swift
//  Smack
//
//  Created by Ezekiel De Leon on 6/4/18.
//  Copyright © 2018 Ezekiel De Leon. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Calculates how much view to show for menu.
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
}
