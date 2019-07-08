//
//  AddThoughtVC.swift
//  FireStoreApplication
//
//  Created by Jason Howard Kendall on 7/6/19.
//  Copyright © 2019 JHK. All rights reserved.
//



import UIKit

class AddThoughtVC: UIViewController, UITextViewDelegate {
    
    // Outlets:
    @IBOutlet weak var categorySegment: UISegmentedControl!
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var thoughtTxt: UITextView!
    @IBOutlet weak var postBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        postBtn.layer.cornerRadius = 4
        thoughtTxt.layer.cornerRadius = 4
        thoughtTxt.text = "My random thought..."
        thoughtTxt.textColor = UIColor.lightGray
        thoughtTxt.delegate = self

    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        textView.textColor = UIColor.darkGray
    }
    
    @IBAction func categoryChanged(_ sender: Any) {
    }
    
    @IBAction func postBtnTapped(_ sender: Any) {
    }
}
