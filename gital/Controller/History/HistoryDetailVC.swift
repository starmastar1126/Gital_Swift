//
//  HistoryDetailVC.swift
//  gital
//
//  Created by xiao long on 2020/7/10.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class HistoryDetailVC: UIViewController, CAPSPageMenuDelegate {

    @IBOutlet weak var navTitleLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var addImage: UIImageView!
    @IBOutlet weak var addButton: UIButton!
    
    var pageMenu : CAPSPageMenu?
    
    var date = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navTitleLabel.text = date
        
        var controllerArray : [UIViewController] = []
        let logsVC : UIViewController = UIViewController(nibName: "HistoryLogsVC", bundle: nil)
        logsVC.title = "Logs"
        controllerArray.append(logsVC)
        let formVC : UIViewController = UIViewController(nibName: "HistoryFormVC", bundle: nil)
        formVC.title = "Form"
        controllerArray.append(formVC)
        let signVC : UIViewController = UIViewController(nibName: "HistorySignVC", bundle: nil)
        signVC.title = "Sign"
        controllerArray.append(signVC)
        let injectionVC : UIViewController = UIViewController(nibName: "HistoryInjectionVC", bundle: nil)
        injectionVC.title = "Injection"
//        injectionVC.addButton.addTarget(self, action: #selector(onAddInjection), for: .touchUpInside)
        controllerArray.append(injectionVC)
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(0),
            .menuItemWidth(self.view.frame.width / 2),
            .useMenuLikeSegmentedControl(true)
        ]
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0, y: 0, width: containerView.frame.size.width, height: containerView.frame.size.height), pageMenuOptions: parameters)
        pageMenu?.delegate = self
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        containerView.addSubview(pageMenu!.view)
    }
    
    func willMoveToPage(_ controller: UIViewController, index: Int) {
        if index == 3 {
            addImage.isHidden = false
            addButton.isHidden = false
        } else {
            addImage.isHidden = true
            addButton.isHidden = true
        }
    }

    @IBAction func onBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onAddSomething(_ sender: UIButton) {
        if pageMenu?.currentPageIndex == 3 {
            let newVC = storyboard?.instantiateViewController(identifier: "NewInspectionVCID") as! NewInspectionVC
            self.navigationController?.pushViewController(newVC, animated: true)
        }
    }
}
