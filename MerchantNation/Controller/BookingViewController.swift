//
//  BookingViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/22/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class BookingViewController: UIViewController {
    
    
    @IBOutlet weak var BookingSegment: UISegmentedControl!
    
    @IBOutlet weak var bookingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bookingTableView.separatorStyle = .none
        
          
          UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.white], for: .selected)
          
          BookingSegment.layer.borderWidth = 1.0
          BookingSegment.layer.cornerRadius = 5.0
          BookingSegment.layer.borderColor = UIColor.green.cgColor
          BookingSegment.layer.masksToBounds = true
          BookingSegment.backgroundColor = .white
          
          
          // Do any additional setup after loading the view.
      }
      
      
    
    @IBAction func backButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)

    }
    
      @IBAction func orderSegmentPressed(_ sender: Any) {
          
          switch BookingSegment.selectedSegmentIndex
          {
          case 0: break
              //textLabel.text = "First Segment Selected"
          case 1: break
             // textLabel.text = "Second Segment Selected"
          default:
              break
          }
      }
      
      
      
  }

  extension BookingViewController : UITableViewDataSource, UITableViewDelegate {
      
      
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 5
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          // OrderdCell
          let cell = tableView.dequeueReusableCell(withIdentifier: "BookingCell", for: indexPath) as!
          BookingTableViewCell
          
          cell.selectionStyle = .none
          //        cell.orderName.text = ""
          //        cell.orderPrice.text = ""
          //        cell.orderNumber.text = ""
          //        cell.orderStatus.text = ""
          //        cell.profileImag.image = UIImage()
          
          
          
          return cell
      }
      
      
  }

