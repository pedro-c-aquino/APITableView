//
//  TableViewCell.swift
//  APITableView
//
//  Created by user208023 on 6/2/22.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(value: Character) {
        self.nameLabel.text = value.name
        self.nameLabel.adjustsFontSizeToFitWidth = true
        let url = extractImage(data: value.thumbnail)
        self.myImage.sd_setImage(with: url)
        
    }
    
    func extractImage(data: [String: String]) -> URL? {
        let path = data["path"] ?? ""
        let imageExtension = data["extension"] ?? ""
        print("\(path).\(imageExtension)")
        return URL(string: "\(path).\(imageExtension)")
    }


    
}
