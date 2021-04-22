//
//  CharacterCollectionViewCell.swift
//  StarWarsCardGame
//
//  Created by Cynthia Nikolai on 4/22/21.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    // MARK:- Outlets
    @IBOutlet weak var characterImageView: UIImageView!
    
    // MARK:- Properties
    var character: Character? {
        didSet {
            updateViews()
        }
    }
    
    // MARK:- Helpers
    func updateViews() {
        guard let character = character else { return }
        characterImageView.image = character.photo
    }
}
