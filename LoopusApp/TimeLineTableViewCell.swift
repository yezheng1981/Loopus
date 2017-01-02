//
//  TimeLineTableViewCell.swift
//  LoopusApp
//
//  Created by YeZheng on 2016/11/26.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class TimeLineTableViewCell: UITableViewCell {

    @IBOutlet weak var startTime: UILabel!
    @IBOutlet weak var endTime: UILabel!
    @IBOutlet weak var seprateBar: UIView!
    @IBOutlet weak var titleEvent: UILabel!
    @IBOutlet weak var addrEvent: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
