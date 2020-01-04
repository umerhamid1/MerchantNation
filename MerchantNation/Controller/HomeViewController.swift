//
//  HomeViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/3/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var loveDishedCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
