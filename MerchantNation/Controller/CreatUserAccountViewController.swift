//
//  CreatUserAccountViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/2/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class CreatUserAccountViewController: UIViewController {

    @IBOutlet weak var privacyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        privacyLabel.textColor = UIColor.white
    }
    
    

    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func SignInButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goUserAccountToAddress", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goUserAccountToAddress" {
            
        }
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
