//
//  SignInViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/1/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var createAccountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        createAccountLabel.textColor = UIColor.white

    }
    

    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
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
