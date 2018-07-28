//
//  ChansonCell.swift
//  Lecteur Youtube
//
//  Created by Charlotte Floderer on 28/07/2018.
//  Copyright © 2018 Floderer Charlotte. All rights reserved.
//

import UIKit

class ChansonCell: UITableViewCell {

    @IBOutlet weak var artisteEtTitreLabel: UILabel!
    
    @IBOutlet weak var miniature: UIImageView!
    
    var chanson: Chanson!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

    
    
    func creerCell (_ chanson: Chanson) {
        self.chanson = chanson
        
        let attributed = NSMutableAttributedString (string: self.chanson.titre, attributes: [.font:UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black] )
        let secondeLigne = NSAttributedString (string: "\n" + self.chanson.artiste, attributes : [.font: UIFont.italicSystemFont(ofSize: 20), .foregroundColor: UIColor.darkGray ])
       
        attributed.append(secondeLigne)
        artisteEtTitreLabel.attributedText = attributed
        
    }
}
