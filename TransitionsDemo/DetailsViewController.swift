//
//  DetailsViewController.swift
//  TransitionsDemo
//
//  Created by ALEKSEY SUSLOV on 15.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailsLabel: UILabel!
    
    var detailsText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailsLabel.text = detailsText
    }
}
