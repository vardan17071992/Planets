//
//  TableViewCell.swift
//  Planets
//
//  Created by MacBook Air on 06.11.2020.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label1.textColor = .red
        label1.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
