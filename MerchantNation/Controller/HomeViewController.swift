//
//  HomeViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/3/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//
import XLPagerTabStrip
import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var sideBarButton: UIButton!
    @IBOutlet weak var loveDishedCollectionView: UICollectionView!
    
    @IBOutlet weak var reserveYourTableImagView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reserveYourTableImagView.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        reserveYourTableImagView.isUserInteractionEnabled = true
        reserveYourTableImagView.addGestureRecognizer(tapGestureRecognizer)
        slideMenu()
        // Do any additional setup after loading the view.
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView

        self.tabBarController?.selectedIndex = 2
        
        // Your action
    }
    
    private func slideMenu(){
        if revealViewController() != nil{
           // sideBarButton.target = revealViewController()
          //  sideBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
             sideBarButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
            revealViewController()?.rearViewRevealWidth = 280
            
            view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
            
            
           

        }
    }
    @IBAction func unwindToOne(_sender : UIStoryboardSegue) {}
    
    
    @IBAction func seeMenuPressed(_ sender: Any) {
          self.tabBarController?.selectedIndex = 1
    }
    
    
    //
//    override func viewWillAppear(_ animated: Bool) {
//        self.hidesBottomBarWhenPushed = true
//        
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        self.hidesBottomBarWhenPushed = false
//
//    }

}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = loveDishedCollectionView.dequeueReusableCell(withReuseIdentifier: "LovedDishesCell", for: indexPath) as! CellLovedDishesCollectionViewCell
        
        cell.cellImage.layer.cornerRadius     = 8.0
        cell.cellImage.clipsToBounds = true
        cell.cellHeading.text
        = "test"
        cell.cellPriceLabel.text = "10$"
        
        return cell
    }
    
    
    
}
