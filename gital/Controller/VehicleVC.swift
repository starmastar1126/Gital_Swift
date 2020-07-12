//
//  VehicleVC.swift
//  gital
//
//  Created by Dan Jin on 7/8/20.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class VehicleVC: UIViewController {

    @IBOutlet weak var navView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.barTintColor = .white
    }

}
