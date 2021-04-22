//
//  FilterViewController.swift
//  StarWarsCardGame
//
//  Created by Cynthia Nikolai on 4/22/21.
//

import UIKit

// Step 1
protocol FilterSelectionDelegate: AnyObject {
    func factionWasSelected(faction: String)
}

class FilterViewController: UIViewController {
    
    // MARK:- Properties
    // Step 2
    weak var delegate: FilterSelectionDelegate?
    
    // MARK:- Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK:- Actions
    @IBAction func sithButtonTapped(_ sender: Any) {
        // Step 5
        delegate?.factionWasSelected(faction: "sith")
        self.dismiss(animated: true)
    }
    
    @IBAction func jediButtonTapped(_ sender: Any) {
        // Step 5
        delegate?.factionWasSelected(faction: "jedi")
        self.dismiss(animated: true)
    }
}
