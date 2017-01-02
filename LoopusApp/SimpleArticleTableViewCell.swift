//
//  SimpleArticleTableViewCell.swift
//  LoopusApp
//
//  Created by YeZheng on 2016/11/25.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class SimpleArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var cornerView: UIView!
    @IBOutlet weak var timeEvent: UILabel!
    @IBOutlet weak var addrEvent: UILabel!
    @IBOutlet weak var detailEvent: UILabel!
    
    @IBOutlet weak var titleEvent: UILabel!
    @IBOutlet weak var headUser: UILabel!
    @IBOutlet weak var headImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
