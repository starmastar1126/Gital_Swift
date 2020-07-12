//
//  LoginVC.swift
//  gital
//
//  Created by Dan Jin on 7/9/20.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var SignupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let attrs = [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12.0),
            NSAttributedString.Key.underlineStyle : 1] as [NSAttributedString.Key : Any]

          let buttonTitleStr = NSMutableAttributedString(string:"Sign Up", attributes:attrs)
        SignupButton.setAttributedTitle(buttonTitleStr, for: .normal)
        
    }
    
    @IBAction func onSignup(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name : "Main" , bundle: nil)
        let registerVC = storyBoard.instantiateViewController(withIdentifier: "registerVC") as! RegisterVC
//        self.present(registerVC, animated: true, completion: nil)
//        UIApplication.shared.delegate?.window??.rootViewController = registerVC
//        self.show(registerVC, sender: nil)
        self.navigationController?.show(registerVC, sender: nil)
    }
    
    @IBAction func onSubmit(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name : "Main" , bundle: nil)
        let tabbarVC = storyBoard.instantiateViewController(withIdentifier: "tabbarVC") as! TabbarVC
        self.navigationController?.show(tabbarVC, sender: nil)
    }
    
    @IBAction func onShowPassword(_ sender: UIButton) {
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
