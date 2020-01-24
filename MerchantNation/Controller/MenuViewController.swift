//
//  MenuViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/5/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class MenuViewController : UIViewController  {
    
     static var orderCount = 0
    
    
    
    
    @IBOutlet weak var sideBarButton: UIBarButtonItem!
    @IBOutlet weak var checkOutView: RoundUIView!
    
    var arrDishes = ["Family","Desi","Buger","Pizza","Beef","Chicken"]

    @IBOutlet weak var sideBarItemButtonCustom: UIButton!
    
    private func slideMenu(){
        if revealViewController() != nil{
            sideBarButton.target = revealViewController()
          //  sideBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
             sideBarItemButtonCustom.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
            revealViewController()?.rearViewRevealWidth = 280
            
            view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
            
            
           

        }
    }
    
  
    let arr = ["Beef","Chicken" ,"Burger"]
    
    
    @IBOutlet weak var dishesCollectionView: UICollectionView!
    
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var checkoutPriceLable: UILabel!
    
    @IBOutlet weak var checkOutButton: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.slideMenu()
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()

        menuTableView.separatorStyle = .none
        checkOutView.isHidden = true
        
    }
    
    
    @IBAction func checkOutButtonPressed(_ sender: Any) {
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        self.hidesBottomBarWhenPushed = false
//        
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        self.hidesBottomBarWhenPushed = true
//        
//        
//    }
}

extension MenuViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrDishes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dishesCell", for: indexPath) as! CellDishesCollectionViewCell
                
        cell.nameLabel.text = arrDishes[indexPath.row]
                //cell.underlineImage.image = UIImage(named: "Line")
//
//        if indexPath.row == 0 {
//
//            cell.underlineImage.image = UIImage(named: "BlackLine")
//        }
                
                return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {


//
//        let selectedCell:UICollectionViewCell = collectionView.cellForItem(at: indexPath)!
//        selectedCell.contentView.backgroundColor = UIColor.red
        
        

        

        //cell.underlineImage.image = UIImage()
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return (collectionView.indexPathsForSelectedItems?.count ?? 0) < 2
    }
    
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return arr.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = dishesCollectionView.dequeueReusableCell(withReuseIdentifier: "dishesCell", for: indexPath) as! CellDishesCollectionViewCell
//
//        //cell.nameLabel.text = ""
////        cell.underlineImage.image = UIImage()
//
//        return cell
//    }
    
    
    
}


extension MenuViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as!
        MenuTableViewCell


        

        cell.selectionStyle = .none
        
        cell.hideShowAction = {
            
            //
                    if MenuViewController.orderCount > 0 {
            
            
                       
                            self.checkOutView.isHidden = false
                           
            
                    }else{
                        self.checkOutView.isHidden = true
                    }
            
        }
       

        //   cell.textLabel?.text = self.items[indexPath.row]

           return cell
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
    }
    
}

extension UIButton {
    func toBarButtonItem() -> UIBarButtonItem? {
        return UIBarButtonItem(customView: self)
    }
}
