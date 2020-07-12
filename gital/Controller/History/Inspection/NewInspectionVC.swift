//
//  NewInjectionVC.swift
//  gital
//
//  Created by xiao long on 2020/7/10.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class NewInspectionVC: UIViewController {

    @IBOutlet weak var vehicleIDText: HSUnderLineTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onNext(_ sender: UIButton) {
        let editVC = storyboard?.instantiateViewController(identifier: "EditInspectionVCID") as! EditInspectionVC
        self.navigationController?.pushViewController(editVC, animated: true)
    }
}
