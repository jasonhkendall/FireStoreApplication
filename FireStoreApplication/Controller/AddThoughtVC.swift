//
//  AddThoughtVC.swift
//  FireStoreApplication
//
//  Created by Jason Howard Kendall on 7/6/19.
//  Copyright © 2019 JHK. All rights reserved.
//



import UIKit
import Firebase

class AddThoughtVC: UIViewController, UITextViewDelegate {
    
    // Outlets:
    @IBOutlet weak var categorySegment: UISegmentedControl!
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var thoughtTxt: UITextView!
    @IBOutlet weak var postBtn: UIButton!
    
    // Variables:
    private var selectedCategory = "funny"
    

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
        Firestore.firestore().collection("thoughts").addDocument(data: [
            "category" : selectedCategory,
            "numComments" : 0,
            "numLikes" : 0,
            "thoughtTxt" : thoughtTxt.text!,
            "timestamp" : FieldValue.serverTimestamp(),
            "username" : userNameTxt.text!]) { (err) in
                if err != nil {
                debugPrint("Error adding document")
            } else {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}
