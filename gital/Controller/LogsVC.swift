//
//  LogsVC.swift
//  gital
//
//  Created by Dan Jin on 7/8/20.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class LogsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var outerView: UIView!
    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var overView: UIView!
    @IBOutlet weak var avaiableLabel: UILabel!
    @IBOutlet weak var carNumLabel: UILabel!
    @IBOutlet weak var enableView: UIView!
    @IBOutlet weak var enableLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var todayLabel: UILabel!
    @IBOutlet weak var weekdayLabel: UILabel!
    @IBOutlet weak var lastLabel: UILabel!
    @IBOutlet weak var truckImage: UIImageView!
    
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var detailHeightConstraints: NSLayoutConstraint!
    @IBOutlet weak var offView: UIView!
    @IBOutlet weak var offImage: UIImageView!
    @IBOutlet weak var offLabel: UILabel!
    @IBOutlet weak var offDutyLabel: UILabel!
    @IBOutlet weak var sbView: UIView!
    @IBOutlet weak var sbImage: UIImageView!
    @IBOutlet weak var sbLabel: UILabel!
    @IBOutlet weak var sleepLabel: UILabel!
    @IBOutlet weak var onView: UIView!
    @IBOutlet weak var onImage: UIImageView!
    @IBOutlet weak var onLabel: UILabel!
    @IBOutlet weak var onDutyLabel: UILabel!
    @IBOutlet weak var drView: UIView!
    @IBOutlet weak var drImage: UIImageView!
    @IBOutlet weak var drLabel: UILabel!
    @IBOutlet weak var drivingLabel: UILabel!
    @IBOutlet weak var historyView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    let defaultColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
    
    var darkTheme = false, isOff = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailHeightConstraints.constant = 0
        
        tableView.register(UINib(nibName: "HistoryTVCell", bundle: nil), forCellReuseIdentifier: "HistoryTVCellID")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let theme = UserDefaults.standard.object(forKey: "theme") {
            darkTheme = !(theme as! Bool)
            onSwitchTheme(UIButton())
        } else {
            UserDefaults.standard.set(darkTheme, forKey: "theme")
            self.tabBarController?.tabBar.barTintColor = .white
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryTVCellID", for: indexPath) as! HistoryTVCell
        cell.backgroundColor = (darkTheme) ? UIColor.black : UIColor.white
        cell.chkBox.tintColor = (darkTheme) ? UIColor.white : UIColor.lightGray
        cell.weekdayLabel.textColor = (darkTheme) ? UIColor.white : UIColor.darkText
        cell.weekdayLabel.text = "SUNDAY"
        cell.dateLabel.text = "JUN " + String(10+indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! HistoryTVCell
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "HistoryDetailVCID") as! HistoryDetailVC
        detailVC.date = cell.weekdayLabel.text! + " | " + cell.dateLabel.text!
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    @IBAction func onClickOff(_ sender: UIButton) {
        isOff = true
        offView.layer.borderColor = UIColor.black.cgColor
        offView.layer.borderWidth = 2
        sbView.layer.borderColor = .none
        sbView.layer.borderWidth = 0
        sbView.backgroundColor = defaultColor
        sbImage.image = UIImage(named: "nightmode")
        sbLabel.textColor = UIColor.darkText
        sleepLabel.textColor = UIColor.darkGray
        onView.layer.borderColor = .none
        onView.layer.borderWidth = 0
        onView.backgroundColor = defaultColor
        onImage.image = UIImage(named: "speedometer")
        onLabel.textColor = UIColor.darkText
        onDutyLabel.textColor = UIColor.darkGray
        drView.layer.borderColor = .none
        drView.layer.borderWidth = 0
        drView.backgroundColor = defaultColor
        drImage.image = UIImage(named: "app-store")
        drLabel.textColor = UIColor.darkText
        drivingLabel.textColor = UIColor.darkGray
        
        statusView.backgroundColor = (darkTheme) ? UIColor.black : defaultColor
        statusImage.image = UIImage(named: "power-off")
        statusLabel.text = "OFF"
        statusLabel.textColor = (darkTheme) ? UIColor.white : UIColor.darkText
        timeLabel.textColor = (darkTheme) ? UIColor.white : UIColor.darkText
        
        enableLabel.text = "Enable personal Conveyance"
        
        detailHeightConstraints.constant = 0
    }
    
    @IBAction func onClickSB(_ sender: UIButton) {
        isOff = false
        let sbColor = UIColor(red: 230/250, green: 157/255, blue: 34/255, alpha: 1)
        offView.layer.borderColor = .none
        offView.layer.borderWidth = 0
        sbView.layer.borderColor = sbColor.cgColor
        sbView.layer.borderWidth = 2
        sbView.backgroundColor = UIColor(red: 252/255, green: 242/255, blue: 222/255, alpha: 1)
        sbImage.image = UIImage(named: "nightmode_yellow")
        sbLabel.textColor = sbColor
        sleepLabel.textColor = sbColor
        onView.layer.borderColor = .none
        onView.layer.borderWidth = 0
        onView.backgroundColor = defaultColor
        onImage.image = UIImage(named: "speedometer")
        onLabel.textColor = UIColor.darkText
        onDutyLabel.textColor = UIColor.darkGray
        drView.layer.borderColor = .none
        drView.layer.borderWidth = 0
        drView.backgroundColor = defaultColor
        drImage.image = UIImage(named: "app-store")
        drLabel.textColor = UIColor.darkText
        drivingLabel.textColor = UIColor.darkGray
        
        statusView.backgroundColor = UIColor(red: 252/255, green: 242/255, blue: 222/255, alpha: 1)
        statusImage.image = UIImage(named: "nightmode_yellow")
        statusLabel.text = "SB"
        statusLabel.textColor = sbColor
        timeLabel.textColor = sbColor
        
        enableLabel.text = "Enable Yard Move"
        
        detailHeightConstraints.constant = 316
    }
    
    @IBAction func onClickOn(_ sender: UIButton) {
        isOff = false
        let onColor = UIColor(red: 19/250, green: 130/255, blue: 235/255, alpha: 1)
        offView.layer.borderColor = .none
        offView.layer.borderWidth = 0
        sbView.layer.borderColor = .none
        sbView.layer.borderWidth = 0
        sbView.backgroundColor = defaultColor
        sbImage.image = UIImage(named: "nightmode")
        sbLabel.textColor = UIColor.darkText
        sleepLabel.textColor = UIColor.darkGray
        onView.layer.borderColor = onColor.cgColor
        onView.layer.borderWidth = 2
        onView.backgroundColor = UIColor(red: 236/255, green: 249/255, blue: 1, alpha: 1)
        onImage.image = UIImage(named: "speedometer_blue")
        onLabel.textColor = onColor
        onDutyLabel.textColor = onColor
        drView.layer.borderColor = .none
        drView.layer.borderWidth = 0
        drView.backgroundColor = defaultColor
        drImage.image = UIImage(named: "app-store")
        drLabel.textColor = UIColor.darkText
        drivingLabel.textColor = UIColor.darkGray
        
        statusView.backgroundColor = UIColor(red: 236/255, green: 249/255, blue: 1, alpha: 1)
        statusImage.image = UIImage(named: "speedometer_blue")
        statusLabel.text = "ON"
        statusLabel.textColor = onColor
        timeLabel.textColor = onColor
        
        enableLabel.text = "Enable personal Conveyance"
        
        detailHeightConstraints.constant = 316
    }
    
    @IBAction func onClickDR(_ sender: UIButton) {
        isOff = false
        let drColor = UIColor(red: 13/250, green: 222/255, blue: 39/255, alpha: 1)
        offView.layer.borderColor = .none
        offView.layer.borderWidth = 0
        sbView.layer.borderColor = .none
        sbView.layer.borderWidth = 0
        sbView.backgroundColor = defaultColor
        sbImage.image = UIImage(named: "nightmode")
        sbLabel.textColor = UIColor.darkText
        sleepLabel.textColor = UIColor.darkGray
        onView.layer.borderColor = .none
        onView.layer.borderWidth = 0
        onView.backgroundColor = defaultColor
        onImage.image = UIImage(named: "speedometer")
        onLabel.textColor = UIColor.darkText
        onDutyLabel.textColor = UIColor.darkGray
        drView.layer.borderColor = drColor.cgColor
        drView.layer.borderWidth = 2
        drView.backgroundColor = UIColor(red: 231/255, green: 247/255, blue: 209/255, alpha: 1)
        drImage.image = UIImage(named: "app-store_green")
        drLabel.textColor = drColor
        drivingLabel.textColor = drColor
        
        statusView.backgroundColor = UIColor(red: 231/255, green: 247/255, blue: 209/255, alpha: 1)
        statusImage.image = UIImage(named: "app-store_green")
        statusLabel.text = "OFF"
        statusLabel.textColor = drColor
        timeLabel.textColor = drColor
        
        enableLabel.text = "Enable personal Conveyance"
        
        detailHeightConstraints.constant = 316
    }
    
    @IBAction func onSwitchTheme(_ sender: UIButton) {
        let blackColor = UIColor.black
        let whiteColor = UIColor.white
        let navColor = UIColor(red: 19/255, green: 130/255, blue: 235/255, alpha: 1)
        let darkContainerColor = UIColor(red: 20/255, green: 20/255, blue: 20/255, alpha: 1)
        let lightContainerColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
        
        darkTheme = !darkTheme
        UserDefaults.standard.set(darkTheme, forKey: "theme")
        
        outerView.backgroundColor = (darkTheme) ? blackColor : navColor
        navView.backgroundColor = (darkTheme) ? blackColor : navColor
        containerView.backgroundColor = (darkTheme) ? blackColor : lightContainerColor
        overView.backgroundColor = (darkTheme) ? darkContainerColor : whiteColor
        detailView.backgroundColor = (darkTheme) ? darkContainerColor : whiteColor
        historyView.backgroundColor = (darkTheme) ? darkContainerColor : whiteColor
        enableView.backgroundColor = (darkTheme) ? blackColor : defaultColor
        truckImage.image = UIImage(named: (darkTheme) ? "vehicle" : "Icon feather-truck")
        avaiableLabel.textColor = (darkTheme) ? whiteColor : blackColor
        carNumLabel.textColor = (darkTheme) ? whiteColor : blackColor
        locationLabel.textColor = (darkTheme) ? whiteColor : blackColor
        noteLabel.textColor = (darkTheme) ? whiteColor : blackColor
        todayLabel.textColor = (darkTheme) ? whiteColor : blackColor
        weekdayLabel.textColor = (darkTheme) ? whiteColor : blackColor
        lastLabel.textColor = (darkTheme) ? whiteColor : blackColor
        enableLabel.textColor = (darkTheme) ? whiteColor : blackColor
        if isOff {
            statusView.backgroundColor = (darkTheme) ? blackColor : defaultColor
            statusLabel.textColor = (darkTheme) ? whiteColor : blackColor
            timeLabel.textColor = (darkTheme) ? whiteColor : blackColor
        }
        self.tabBarController?.tabBar.barTintColor = (darkTheme) ? .black : .white
        tableView.reloadData()
    }
}
