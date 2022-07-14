//
//  NewItemViewController.swift
//  TransitionsDemo
//
//  Created by ALEKSEY SUSLOV on 15.07.2022.
//

import UIKit

class NewItemViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBAction func canselButtonPressed() {
        dismiss(animated: true)
    }
}
