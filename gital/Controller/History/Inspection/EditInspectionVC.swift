//
//  EditInspectionVC.swift
//  gital
//
//  Created by xiao long on 2020/7/10.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class EditInspectionVC: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
                
        var controllerArray : [UIViewController] = []
        let generalVC : UIViewController = UIViewController(nibName: "InspectionGeneralVC", bundle: nil)
        generalVC.title = "General"
        controllerArray.append(generalVC)
        let defectsVC : UIViewController = UIViewController(nibName: "InspectionDefectsVC", bundle: nil)
        defectsVC.title = "Defects"
        controllerArray.append(defectsVC)
        let signVC : UIViewController = UIViewController(nibName: "InspectionSignVC", bundle: nil)
        signVC.title = "Sign"
        controllerArray.append(signVC)
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(0),
            .menuItemWidth(self.view.frame.width / 2),
            .useMenuLikeSegmentedControl(true)
        ]
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0, y: 0, width: containerView.frame.size.width, height: containerView.frame.size.height), pageMenuOptions: parameters)
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        containerView.addSubview(pageMenu!.view)
    }

    @IBAction func onBack(_ sender: UIButton) {
    }
    
    @IBAction func onSave(_ sender: UIButton) {
    }
}
