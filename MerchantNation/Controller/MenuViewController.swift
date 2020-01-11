//
//  MenuViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/5/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class MenuViewController : ButtonBarPagerTabStripViewController {
    
    
    
    @IBOutlet weak var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       menuTableView.dataSource = self
        menuTableView.delegate = self
        
        //self.navigationController?.isNavigationBarHidden = false
        //get rod of containerView offset
        // edgesForExtendedLayout = []
        //move tab
        
        self.navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
        let height: CGFloat = 500 //whatever height you want to add to the existing height
           let bounds = self.navigationController!.navigationBar.bounds
           self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height + height)

        buttonBarView.frame.origin.y = buttonBarView.frame.origin.y + 80
        buttonBarView.backgroundColor = .white
        configureButtonBar()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - PagerTabStripDataSource
    
    var i = ["Family Deal","Beaf","Fried Chicken","Side Item","Beverages"]
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        var r = [UIViewController]()
        for  a in i {
            let child = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChildViewController") as! FamilyDealsViewController
            child.childNumber = a
            r.append(child)
//            let child2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChildViewController") as! FamilyDealsViewController
//            child2.childNumber = "Two"
        }
       
        
        return r
//            [
//            child1
//            , child2
//        ]
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
    
    
}

extension MenuViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = self.menuTableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuTableViewCell
        
        let cell = menuTableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as!
        MenuTableViewCell


          cell.NameLabel.text = "Name"
          cell.priceLabel.text = "price"

        //   cell.textLabel?.text = self.items[indexPath.row]

           return cell
    }
    
}
