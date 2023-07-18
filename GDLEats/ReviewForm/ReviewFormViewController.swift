//
//  ReviewFormViewController.swift
//  GDLEats
//
//  Created by Mario AFH on 17/07/23.
//  Copyright © 2023 MAFHDev. All rights reserved.
//  Using Swift 5.0
//
import UIKit

class ReviewFormViewController: UITableViewController {
   
    
    @IBOutlet var ratingsView: RatingsView!
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var reviewTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func onSaveTapped(_ sender: Any) {
       print(ratingsView.rating)
       print(titleTextField.text as Any)
       print(nameTextField.text as Any)
       print(reviewTextView.text as Any)
       dismiss(animated: true, completion: nil)
    }

}
