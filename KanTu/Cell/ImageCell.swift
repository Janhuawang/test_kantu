//
//  ImageCell.swift
//  KanTu
//
//  Created by TERMINUS-JH on 2023/1/9.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func bind(_ data:String){
        iconImage.image = UIImage(named: data)
    }
}
