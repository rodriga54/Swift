//
//  Player.swift
//  
//
//  Created by Abe Rodriguez on 11/30/15.
//
//

import UIKit

class Player: UITableViewCell {
    
    @IBOutlet weak var PlayerName: UILabel!
    @IBOutlet weak var PositionLabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    
    var player: Roster! {
        didSet {
            PlayerName.text = "\(player.lName), \(player.fName)"
            PositionLabel.text = "\(player.Number) | \(player.position)"
            ImageView.image = imageForRating("s.jpg")
        }
    }
    
    func imageForRating(rating: String) -> UIImage? {
        return UIImage(named: "\(player.ImageURL)\(rating)")
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
