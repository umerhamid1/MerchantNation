//
//  ReservationViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/13/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class ReservationViewController: UIViewController {

    
    @IBOutlet weak var addressTableView: UITableView!
    
    @IBOutlet weak var sideMenuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slideMenu()
        self.addressTableView.separatorStyle = .none
    //    cell.selectionStyle = .none
   
        // Do any additional setup after loading the view.
    }
    

    private func slideMenu(){
        if revealViewController() != nil{
           // sideMenuButton.target = revealViewController()
          //  sideBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
             sideMenuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
            revealViewController()?.rearViewRevealWidth = 280
            
            view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
            
            
           

        }
    }


}

extension ReservationViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = self.menuTableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuTableViewCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath) as!
        ReservationAddressTableViewCell
        cell.selectionStyle = .none



       // cell.addressLabel.text = "1330 N. La Brea Ave"
       // cell.mapImage.image = UIImage()
       // cell.locationLabel.text = "Inglewood, CA 90203"

           return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToBooking", sender: self)
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "goToBooking" {
           let vc = segue.destination as! BookYourTableViewController
         
        vc.address = "1330 N. La Brea Ave"
          
           
       }
   }
}

