//
//  DocumentsVC.swift
//  gital
//
//  Created by Dan Jin on 7/8/20.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class DocumentsVC: UIViewController {
    
    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var docTableView: UITableView!
    
    var docTitleArray = [String?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        docTitleArray = [   "BILL OF LADING MAY 13",
                            "BILL OF LADING MAY 10" ]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.barTintColor = .white
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DocumentsVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return docTitleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "docTVCell", for: indexPath) as! UITableViewCell
        cell.imageView?.image = UIImage(named: "checkbox")
        cell.textLabel?.text = docTitleArray[indexPath.row]
        return cell
    }
    
    
}
