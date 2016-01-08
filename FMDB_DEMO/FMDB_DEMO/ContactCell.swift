//
//  ContactCell.swift
//  FMDB_DEMO
//
//  Created by 丁嘉瑞 on 16/1/8.
//  Copyright © 2016年 Edward Ding. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
