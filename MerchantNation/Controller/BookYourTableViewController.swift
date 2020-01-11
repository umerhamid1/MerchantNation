//
//  BookYourTableViewController.swift
//  MerchantNation
//
//  Created by umer hamid on 1/11/20.
//  Copyright © 2020 umer hamid. All rights reserved.
//

import UIKit

class BookYourTableViewController: UIViewController , UITextViewDelegate {

    @IBOutlet weak var commentTextview: UITextView!
    
    @IBOutlet weak var addButton: RoundedButton!
    
    
    @IBOutlet weak var subtractButton: RoundedButton!
    
    
    @IBOutlet weak var countGuest: UILabel!
    
    @IBOutlet weak var txtDatePicker: UITextField!

    var placeholderLabel : UILabel!
     let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showDatePicker()
        commentTextview.delegate = self
        placeholderLabel = UILabel()
        placeholderLabel.text = "Comments"
        placeholderLabel.font = UIFont.italicSystemFont(ofSize: (commentTextview.font?.pointSize)!)
        placeholderLabel.sizeToFit()
        commentTextview.addSubview(placeholderLabel)
        placeholderLabel.frame.origin = CGPoint(x: 5, y: (commentTextview.font?.pointSize)! / 2)
        placeholderLabel.textColor = UIColor.lightGray
        placeholderLabel.isHidden = !commentTextview.text.isEmpty
        //commentTextview.placeholder
        // Do any additional setup after loading the view.
    }
    
    func textViewDidChange(_ textView: UITextView) {
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
    
    var i = 1

    @IBAction func addButtonPressed(_ sender: Any) {
        
        if i >= 1 {
            i += 1
            countGuest.text = "\(i)"
        }else{
           return
        }
        
    }
    
    
    @IBAction func subtractButtonPressed(_ sender: Any) {
        
        if i > 1 {
                   i -= 1
                   countGuest.text = "\(i)"
               }else{
                  return //subtractButton.isEnabled = false
               }
    }
    

}


extension BookYourTableViewController{
   

     

      func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date

       //ToolBar
       let toolbar = UIToolbar();
       toolbar.sizeToFit()
       let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
      let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));

     toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)

      txtDatePicker.inputAccessoryView = toolbar
      txtDatePicker.inputView = datePicker

     }

      @objc func donedatePicker(){

       let formatter = DateFormatter()
       formatter.dateFormat = "dd/MM/yyyy"
       txtDatePicker.text = formatter.string(from: datePicker.date)
       self.view.endEditing(true)
     }

     @objc func cancelDatePicker(){
        self.view.endEditing(true)
      }
}

