//
//  DetailTableViewCell.swift
//  FansArea
//
//  Created by 狗儿心 on 17/2/3.
//  Copyright © 2017年 狗儿心. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var FildeLabel: UILabel!
    @IBOutlet weak var ValueLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
