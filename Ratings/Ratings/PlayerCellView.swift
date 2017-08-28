//
//  PlayerCellView.swift
//  
//
//  Created by Abe Rodriguez on 10/26/15.
//
//

import UIKit

class PlayerCellView: UITableViewCell {
    
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var gamelabel: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    
    var player: Player!{
        didSet{
            namelabel.text = player.name
            gamelabel.text = player.game
            ratingImage.image = imageforrating (player.rating)
            
        }
        
    }
    
    func imageforrating(rating: Int) -> UIImage?{
        
        
        return UIImage (contentsOfFile: "\(rating)Star")
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
