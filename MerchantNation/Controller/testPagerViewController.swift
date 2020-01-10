//
//  testPagerViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/10/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class testPagerViewController:  ButtonBarPagerTabStripViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        configureButtonBar()
        
        buttonBarView.frame.origin.y = buttonBarView.frame.origin.y + 80
        buttonBarView.backgroundColor = .white
        //self.settings.style.selectedBarBackgroundColor = UIColor.white

        // Do any additional setup after loading the view.
    }
    

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {

         let child1 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChildViewController1") as! TestChildPagerViewController
         child1.childNumber = "One"

         let child2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChildViewController1") as! TestChildPagerViewController
         child2.childNumber = "Two"

         return [child1, child2]
    }



        func configureButtonBar() {
             // Sets the background colour of the pager strip and the pager strip item
             settings.style.buttonBarBackgroundColor = .white
             settings.style.buttonBarItemBackgroundColor = .white

             // Sets the pager strip item font and font color
             settings.style.buttonBarItemFont = UIFont(name: "Helvetica", size: 16.0)!
             settings.style.buttonBarItemTitleColor = .gray

             // Sets the pager strip item offsets
             settings.style.buttonBarMinimumLineSpacing = 0
             settings.style.buttonBarItemsShouldFillAvailableWidth = true
             settings.style.buttonBarLeftContentInset = 0
             settings.style.buttonBarRightContentInset = 0

             // Sets the height and colour of the slider bar of the selected pager tab
             settings.style.selectedBarHeight = 3.0
             settings.style.selectedBarBackgroundColor = .orange

             // Changing item text color on swipe
             changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
                   guard changeCurrentIndex == true else { return }
                   oldCell?.label.textColor = .gray
                newCell?.label.textColor = .black
             }
        }
         // Sets the background colour of the pager strip and the
    
}
