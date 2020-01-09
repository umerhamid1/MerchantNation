//
//  MenuViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/5/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class MenuViewController : ButtonBarPagerTabStripViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        //self.navigationController?.isNavigationBarHidden = false
        //get rod of containerView offset
       // edgesForExtendedLayout = []
        //move tab
       
       	// buttonBarView.frame.origin.y = buttonBarView.frame.origin.y + 100
        //configureButtonBar()
        

        // Do any additional setup after loading the view.
    }
    
    // MARK: - PagerTabStripDataSource

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {

        let child1 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChildViewController") as! FamilyDealsViewController
         child1.childNumber = "One"

         let child2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChildViewController") as! FamilyDealsViewController
         child2.childNumber = "Two"

         return [
            child1
            , child2
        ]
    }
    
    
    // MARK: - Configuration

    func configureButtonBar() {
           settings.style.buttonBarBackgroundColor = .white
           settings.style.buttonBarItemBackgroundColor = .white

           settings.style.buttonBarItemFont = UIFont(name: "Helvetica", size: 16.0)!
           settings.style.buttonBarItemTitleColor = .gray

           settings.style.buttonBarMinimumLineSpacing = 0
           settings.style.buttonBarItemsShouldFillAvailableWidth = true
           settings.style.buttonBarLeftContentInset = 300
           settings.style.buttonBarRightContentInset = 300

           settings.style.selectedBarHeight = 3.0
           settings.style.selectedBarBackgroundColor = .orange

        
        
           // Changing item text color on swipe
           changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
               guard changeCurrentIndex == true else { return }
               oldCell?.label.textColor = .gray
               newCell?.label.textColor = .orange
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
