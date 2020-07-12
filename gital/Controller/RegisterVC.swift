//
//  RegisterVC.swift
//  gital
//
//  Created by Dan Jin on 7/9/20.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var SigninButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let attrs = [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12.0),
            NSAttributedString.Key.underlineStyle : 1] as [NSAttributedString.Key : Any]

        let buttonTitleStr = NSMutableAttributedString(string:"Sign In", attributes:attrs)
        SigninButton.setAttributedTitle(buttonTitleStr, for: .normal)

    }
    
    @IBAction func onSignin(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name : "Main" , bundle: nil)
        let loginVC = storyBoard.instantiateViewController(withIdentifier: "loginVC") as! LoginVC
//        self.present(loginVC, animated: true, completion: nil)
//        UIApplication.shared.delegate?.window??.rootViewController = loginVC
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onNext(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name : "Main" , bundle: nil)
        let tabbarVC = storyBoard.instantiateViewController(withIdentifier: "tabbarVC") as! TabbarVC
        self.navigationController?.show(tabbarVC, sender: nil)
    }
    
    @IBAction func onShowPassword(_ sender: UIButton) {
    }
    
    @IBAction func onOpenTerms(_ sender: UIButton) {
    }
    
    @IBAction func onOpenPrivacy(_ sender: UIButton) {
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
