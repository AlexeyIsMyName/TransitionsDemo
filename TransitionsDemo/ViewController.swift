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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = text
        
        let attributes: [NSAttributedString.Key : Any]? = [
            .font : UIFont.init(name: "Helvetica", size: 30.0)!
        ]
        
        let title = NSAttributedString(string: text, attributes: attributes)
        
        justButton.setAttributedTitle(title, for: .normal)
    }


}

