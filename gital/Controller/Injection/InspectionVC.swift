//
//  InspectionVC.swift
//  gital
//
//  Created by Dan Jin on 7/8/20.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class InspectionVC: UIViewController {

    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var containerView: UIView!
    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var controllerArray : [UIViewController] = []
        let logVC : UIViewController = UIViewController(nibName: "EditedLogVC", bundle: nil)
        logVC.title = "Edited Log"
        controllerArray.append(logVC)
        let currentVC : UIViewController = UIViewController(nibName: "CurrentLogVC", bundle: nil)
        currentVC.title = "Current Log"
        controllerArray.append(currentVC)
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.barTintColor = .white
    }

    @IBAction func onShare(_ sender: UIButton) {
    }
    
    @IBAction func onPrevLog(_ sender: UIButton) {
    }
    
    @IBAction func onNextLog(_ sender: UIButton) {
    }
}
