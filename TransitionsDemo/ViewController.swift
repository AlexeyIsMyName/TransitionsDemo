//
//  ViewController.swift
//  TransitionsDemo
//
//  Created by ALEKSEY SUSLOV on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var justButton: UIButton!
    
    var titles = ["Rick & Morty 🤘🏻"]
    private var randomTitle = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setRandomTitle()
        updateUI()
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard let newItemVC = segue.source as? NewItemViewController else { return }
        guard let title = newItemVC.titleTextField.text else { return }
        titles.append(title)
//        setRandomTitle()
//        updateUI()
    }
    
    @IBAction func transitionButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetails", sender: randomTitle)
    }
    
    private func setRandomTitle() {
        randomTitle = titles.randomElement() ?? "Random Title ✌️"
    }
    
    private func updateUI() {
        let attributes: [NSAttributedString.Key : Any]? = [
            .font : UIFont.init(name: "Helvetica", size: 30.0) ?? .systemFont(ofSize: 30.0)
        ]
        
        let title = NSAttributedString(string: randomTitle, attributes: attributes)
        
        justButton.setAttributedTitle(title, for: .normal)
        navigationItem.backButtonTitle = randomTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as?DetailsViewController else { return }
        detailsVC.detailsText = sender as? String
    }
}

