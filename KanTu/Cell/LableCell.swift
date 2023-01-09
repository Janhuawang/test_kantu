//
//  LalbeCell.swift
//  KanTu
//
//  Created by TERMINUS-JH on 2023/1/9.
//

import UIKit

class LableCell: UITableViewCell {

    @IBOutlet weak var lableText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func bind(_ data:String){
        lableText.text = data
    }
}
