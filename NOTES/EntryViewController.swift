//
//  EntryViewController.swift
//  NOTES
//
//  Created by Yazan Alraddadi on 25/03/1443 AH.

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet var titleField: UITextField!
    @IBOutlet var noteField: UITextView!
    

     var completion: ((String, String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let savedTitle = UserDefaults.standard.string(forKey: "title")
//        let savedNote = UserDefaults.standard.string(forKey: "note")

//        titleField.text = savedTitle
//        noteField.text = savedNote
        
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))

    }

    @objc func didTapSave() {
        if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty {
            completion?(text, noteField.text)
//            UserDefaults.standard.set(titleField.text, forKey: "title")
//            UserDefaults.standard.set(noteField.text, forKey: "note")
        }
    }
        


}


