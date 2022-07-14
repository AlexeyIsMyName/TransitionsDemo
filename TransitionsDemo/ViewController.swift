//
//  ViewController.swift
//  TransitionsDemo
//
//  Created by ALEKSEY SUSLOV on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var justButton: UIButton!
    
    let text = "Rick & Morty 🤘🏻"
    let textPressed = "Rick & Morty 🤟🏻"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributes: [NSAttributedString.Key : Any]? = [
            .font : UIFont.init(name: "Helvetica", size: 30.0) ?? .systemFont(ofSize: 30.0)
        ]
        
        let title = NSAttributedString(string: text, attributes: attributes)
        
        justButton.setAttributedTitle(title, for: .normal)
        navigationItem.backButtonTitle = text
    }
}

